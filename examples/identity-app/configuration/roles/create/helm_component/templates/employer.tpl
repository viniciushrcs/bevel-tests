apiVersion: helm.toolkit.fluxcd.io/v2beta1
kind: HelmRelease
metadata:
  name: {{ component_name }}-acme
  annotations:
    fluxcd.io/automated: "false"
  namespace: {{ component_ns }}
spec:
  releaseName: {{ component_name }}-acme
  interval: 1m
  chart:
   spec:
    chart: {{ chart_path }}/acme
    sourceRef:
      kind: GitRepository
      name: flux-{{ network.env.type }}
      namespace: flux-{{ network.env.type }}
  values:
    metadata:
      namespace: {{ component_ns }}
      name: {{ component_name }}
    organization:
      name: {{ organization.name }}
    image:
      pullSecret: regcred
      pullPolicy: IfNotPresent
      init:
        name: certs-init
        repository: alpine:3.9.4
      agent:
        name: {{ component_name }}
        repository: {{ network.docker.url }}/aries-agents:{{ network.version }}
    service:
      ports:
        service: {{ endorser.server.httpPort }}
        endpoint: {{ endorser.server.apiPort }}
        webhook: {{ endorser.server.webhookPort }}
{% if organization.cloud_provider == 'minikube' %}
      address: {{ minikube_ip }}
{% else %}
      address: {{ component_name }}.{{ organization.external_url_suffix }}
{% endif %}
      ledger: {{ trustee_url }}
      genesis: {{ trustee_url }}/genesis
    vault:
      address: {{ vault.url }}
      serviceAccountName: {{ service_account }}
      authPath: {{ auth_method_path }}
      endorserName: {{ endorser.name }}
      role: ro
    storage:
      size: 128Mi
      className: {{ organization.name }}-{{ organization.cloud_provider }}-storageclass
    proxy:
{% if organization.cloud_provider == 'minikube' %}
      provider: "minikube"
{% else %}
      provider: "ambassador"
{% endif %}
