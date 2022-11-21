### How is the structure of pods in Google K8 Engine

Workloads -> Cluster -> Nodes -> Pods -> Containers

__Clusters Type:__

1. AutoPilot Mode:
For clusters in Autopilot mode, GKE manages the entire underlying infrastructure of the clusters, including the control plane, nodes, and all system components

The following diagram provides an overview of the architecture for an Autopilot cluster in GKE

<img src="https://cloud.google.com/static/kubernetes-engine/images/cluster-arch-autopilot.svg">


2. standard Mode


* Read about autopilot cluster Architecture [here](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-architecture)
