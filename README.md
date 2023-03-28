## Application Networking with Amazon VPC Lattice and Amazon EKS

Amazon VPC Lattice is a fully-managed application networking service built directly into the AWS network infrastructure that you use to connect, secure, and monitor all of your services across multiple accounts and virtual private clouds (VPCs). Amazon EKS customers can fully leverage Amazon VPC Lattice through the use of AWS Gateway API controller, an implementation of Kubernetes Gateway API. Using VPC Lattice, EKS customers can set up cross-cluster connectivity with standard Kubernetes semantics, in a simple and consistent manner.

This repository is a companion to this blog which demonstrates a use case where a service running in an EKS cluster in a VPC is accessed, using Amazon VPC Lattice, from a service in another cluster in a different VPC, along with support for custom domain names for services. 

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

