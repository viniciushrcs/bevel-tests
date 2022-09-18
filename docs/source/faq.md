[//]: # (##############################################################################################)
[//]: # (Copyright Accenture. All Rights Reserved.)
[//]: # (SPDX-License-Identifier: Apache-2.0)
[//]: # (##############################################################################################)

Frequently Asked Questions
==========================

## 1.FAQs for Getting Started

### Who are the target users?
In this project, it is assumed that a user would fall into either a category of [Operators](./operationalguide.md) or [Developers](./developerguide.md). However, this is not saying that technicians such as Solution/Tech Archs who have more expertise in wider areas are not eligible users, e.g. Blockchain or Distributed Ledger Technology (DLT). On the contrary, a user who has proper technical knowledge on those areas will find the usage of Hyperledger Bevel  repository mentioned in the tutorial on this website to be more straightforward. For people new to these areas, they might find a deep learning curve before using or even contributing back to this repository. If a user is from a non-tech background, but would still like to find out how Bevel could accelerate set-up of a new production-scale DLT network, the [Introduction](./introduction.md) section is the right start point.

(1) **Operators**:
An operator is a System Operator that would work as a Deployment Manager, who has strong technical knowledge on cloud architecture and DevOps but basic DLT. An operator might be a decision maker in a new DLT/Blockchain project, and would be responsible for the ongoing stability of the organization's resources and services as well as set-up and maintenance of one or more applications for the organization. 

A **common scenario** that an operator would like to leverage Hyperledger Bevel repository might be that s/he has been asked to use a DLT/Blockchain technology for a business case, but s/he does not know where/how to start. S/he might have limited budget, and might not have all the technical skills in the team and was overwhelmed by the time it would take for the solution to be created. 

**Unique values** in scenarios like this provisioned by Hyperledger Bevel repository are: (a) efficiency and rapid deployment (b) consistent quality (c) open-source (d) cloud infrastructure independence (e) optimization via scalability, modularity and security and (f) accelerated go-to-market. 

Essentially, an operator would be able to set up a large-size DLT/Blockchain network in a production environment by using this repository as per the tutorials in this website along with the instructions in the readme files in the repository. The network requirements such as which DLT/Blockchain platform (e.g. Fabric/Corda) and which cloud platform (e.g. AWS/GCP/Azure/DigitalOcean etc) would be used should have been pre-determined already before using this repository. The operator would ensure that Hyperledger Bevel repo is set up and deployed properly. Eventually, Bevel would speed up the whole DLT/Blockchain network set-up process and would require less DLT/Blockchain developers enabling the operator to retain the budgets and man-power for other activities. 

(2) **Developers**:
A developer can be a DevOps or Full Stack Developer who would have knowledge on multiple programming languages, basic knowledge of DLT/Blockchain networks and smart contracts, Ansible and DevOps. Daily work might include developing applications and using DevOps tools. 

A **common scenario** that a developer would like to use this repo might be that s/he would like to gain knowledge on production-scale DLT/Blockchain development, but might not have enough technical skills and experiences yet. Learing knowledge from the existing poorly-designed architecture would be time-consuming and fruitless.

Hyperledger Bevel provisions its **unique values** to the developer that s/he now has an opportunity to learn how different sets of cutting-edge technologies leveraged in this repository are combined in use such as reusable architecture patterns, reusable assets including APIs or microservices design. The architecture design in this repository has been fully tested and demonstrated as a high-quality one known for a fact that it has been being improved continously through the technical experts' rich experiences. The developer could try to use this repository to set up a small-size DLT/Blockchain network to see how it works and gradually pick up new skills across Blockchain, DevOps, etc.

Furthermore, the developer could even show the maturity of skills to contribute back to this project. Contributions can include but not limited to (1) suggest or add new functionalities (2) fix various bugs and (3) organize hackthon or developer events for Hyperledger Bevel in the future.

### What is Hyperledger Bevel and how could it help me?
In simple words, Hyperledger Bevel works as an accelerator to help organizations set up a production-scale DLT network (currently supports Corda, Fabric, Indy, Besu and Quorum) with a single network.yaml file used for [Fabric](./operations/fabric_networkyaml.md) or [Corda](./operations/corda_networkyaml.md) or [Quorum](./operations/quorum_networkyaml.md) to be configured in this project. It can work in managed Kubernetes Clusters which has been fully tested in AWS Elastic Kubernetes Services (EKS), and should also work in a non-managed Kubernetes Cluster in theory. For detailed information, please see the [Welcome page](index).

### How do I find more about Hyperledger Bevel?
Normally, when a user sees information in this section, it means that s/he has already known the existence of Hyperledger Bevel project, at least this readthedocs website. Basically, this website provisions a high-level background information of how to use Hyperledger Bevel GitHub repository. For detailed step-by-step instructions, one should go to Hyperledger Bevel's GitHub repository and find the readme files for a further reading. Upon finishing reading the tutorials in this website, one should be able to analyse whether Hyperledger Bevel would be the right solution in your case and reach a decision to use it or not.

### How much would Hyperledger Bevel cost? How much would it cost to run Hyperledger Bevel on a cloud platform?
As an open source repository, there will be no cost at all to use Hyperledger Bevel. However, by running Hyperledger Bevel repository on a cloud platform, there might be cost by using a cloud platform and it will depend on which cloud services you are going to use.

### Who can support me during this process and answer my questions?
One could raise questions in the Github repository and Hyperledger Bevel maintainers will give their best supports at early stages. Later on, when the open community matures, one would expect to get support from people in the community as well.

### Is there any training provided? If so, what kind of training will be included?
Unfortunately, there are no existing training for using Hyperledger Bevel yet, because we are not sure about the potential size of the community and what types of training people would look forward to. However, we do aware that trainings could happen, if there would be a large number of same or similar questions or issues raised by new users, and if we would have a large amount of requests like this in the future.  

### Can I add/remove one or more organisations as DLT nodes in a running DLT/Blockchain network by using Hyperledger Bevel?
Yes, you can add additional nodes to a running DLT/Blockchain network using Hyperledger Bevel . Unfortunately, Bevel does not support removing nodes in a running DLT/Blockchain network, but this significant feature is in our future roadmap, and we will add this feature in a future release.

### Does Hyperledger Bevel support multiple versions of Fabric and Corda? What are the minimum versions for Fabric and Corda supported in Hyperledger Bevel?
Hyperledger Bevel currently only supports version 1.4.8 & 2.2.2 for Fabric and version 4.1 and 4.4 for Corda as minimum versions, and will only support future higher versions for Fabric and Corda. Corda Enterprise 4.7 is available as per latest release. Please check the [latest releases](https://github.com/hyperledger/bevel/releases) for version upgrades and deprecations.

## 2.FAQs for Operators Guide

### What is the minimal infrastructure set-up required to run Hyperledger Bevel?
To run Hyperledger Bevel repository, you need to have a managed/non-managed Kubernetes clusters ready as well as an unsealed Hashicorp Vault service available. 

### What would be the recommended/required cloud service?
We recommand to use Cloud Services such as Aamzon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP) and DigitalOcean (DO) as their managed Kubernetes clusters services are being or will be tested for this repository. We have fully tested this repository in AWS, and testing it on Azure, GCP, DO is in our future roadmap.

### Do I have to use AWS? 
No, AWS is not mandatory, but is recommended because it is the first cloud platform we have tested on. Theoretically, Hyperledger Bevel repository should work in any cloud platforms as long as a Kubernetes Cluster service is provisioned, but there is no 100% guarantee it will work, since there might be unseen/unknown features in these managed Kubernetes clusters environments we are not aware of.

### Are there any pre-requisites to run Hyperledger Bevel?
Yes, you can find them on this [page](./operations/configure_prerequisites.md).

### How to configure HashiCorp Vault and Kubernetes?
Please see this [page](./developerguide.md) for details.

### I'm using Windows machine, can I run Hyperledger Bevel on it?
Hyperledger Bevel repository relies a lot on using [Ansible](./gettingstarted.html#ansible), which might not work in Windows machines. Please check Ansible website for more information.

### How do I configure a DLT/Blockchain network?
The network.yaml file is the main file to be configured to set up a DLT/Blockchain network. [This page](./operationalguide.md) gives the links for a user to pick up knowledge of how to configure this file for Fabric and Corda first (see the two "Configuration file specification" sections for each DLT/Blockchain platform). Having this knowledge will then enable a user to understand how to use this file in the "Setting up DLT network" section.

### How can I test whether my DLT/Blockchain network are configured and deployed correctly?
Please see this [page](./operations/setting_dlt.md) for detials.

### How/Where can I request for new features, bugs and get feedback?
One could request a new feature on the Github repository for now. In the future, people might use Jira or Slack to do the same as well.

### Are CI/CD pipeline tools a mandatory to use Hyperledger Bevel?
No, CI/CD pipeline tools like Jenkins are not mandatory, but it could help a user automate the set-up or testing of a new DLT/Blockchain network in different environments, once a user has a good understanding of using it. We have the main Jenkinsfile in `automation` folder which can be taken as a template.

### Is it required to run Ansible in a particular machine like AWS EC2?
No, a user should be able to run the Ansible command on any machine as long as Ansible command CLI is installed.

### Is there an example ansible_hosts file?
Yes, you can find an example ansible_hosts file [here](https://github.com/hyperledger/bevel/tree/main/platforms/shared/inventory/ansible_provisioners). The configuration in this file means that all Ansible commands will be run in the same machine that works as both an Ansible client and server machine.

### Can I specify the tools versions such as kubectl, helm in this project?
Yes, you can specify tools versions like kubectl, helm, HashiCorp Vault, AWS-authenticator in the playbook [environment-setup.yaml](https://github.com/hyperledger/bevel/tree/main/platforms/shared/configuration/environment-setup.yaml).

### How would system react if we plan to update tools versions (e.g. kubectl, helm)?
Honestly speaking, we don't know. The latest version Hyperledger Bevel has been tested on specific client versions of these tools, see below:
(1) Kubectl: v1.14.2 for Kubernetes 1.14, v1.16.13 for Kubernetes 1.16, v1.19.8 for Kubernetes 1.19
(2) Helm: v3.6.2
(3) HashiCorp Vault: v1.7.1
(4) AWS-Authenticator: v1.10.3

It is assumed that newer versions of these tools would be backward compatible, which is beyond our control. One can raise a new ticket to Hyperledger Bevel GitHub repository, if any major updates would break the system down.

### Why does the Flux K8s pod get a permission denied for this Hyperledger Bevel GitHub repository?
This usually means that the private key that you have used in your network.yaml for gitops does not have access to the GitHub repository. The corresponding public key must be added to your GitHub Account (or other git repository that you are using). Details can be found [here](https://github.com/hyperledger/bevel/tree/main/platforms/shared/configuration/).

### Why does the flux-helm-operator keep on reporting "Failed to list *v1beta1.HelmRelease: the server could not find the requested resource (get helmreleases.flux.weave.works)"?
The HelmRelease CustomResourceDefinition (CRD) was missing from the cluster, according to https://github.com/fluxcd/flux, the following command has to be used to deploy it:
```
kubectl apply -f https://raw.githubusercontent.com/fluxcd/flux/helm-0.10.1/deploy-helm/flux-helm-release-crd.yaml
```

## 3.FAQs for Developer Guide

### How do I contribute to this project?
- Guide on Bevel [contribution](./contributing.md)  
- Details on creating pull request on github can be found in this [link.](https://help.github.com/en/articles/about-pull-requests)

### Where can I find Hyperledger Bevel's coding standards?
TBD

### How can I engage in Hyperledger Bevel community for any events?
Connect us on Bevel Discord Channel [Discord Chat](https://discord.gg/wRaD4R6Q)
