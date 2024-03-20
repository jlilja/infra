# Kubernetes

## Swapping

Swapping in unix systems is a file or a partition of a hard drive that acts as an extension to the computer's memory. This enables systems that runs proccesses which require more memory than physically available to swap some of the stored data onto file(s) on disk.

### Swap in Kubernetes

One of the ideas of disabling swap for Kubernetes nodes is that instead of letting a node swap for more memory allocation, it will choose a node which fulfills the requirement of required memory by using just its physical memory.

Kubernetes also implements Quality of Service when it comes to managing pods, disabling swap will make it easier for Kubernetes to determine its limits for a given node.

### Enable and disable swap

Show current swap status `sudo swapon --show`.

Disable all swap areas (file or partition).

Enable swapping requires specifying a file or partition. This can be done in several ways.

[This guide](https://www.baeldung.com/linux/swap-space#1-create-a-swap-file) shows how to enable swap for a single file.

[This guide](https://www.baeldung.com/linux/swap-space#2-create-a-swap-partition) shows how to enable swap for an entire partition.

> [!NOTE]
> When turning off swapping using one of the options above, remember that it does not persist reboots. To make the change permanent, edit `/etc/fstab` and comment out the line regarding swap.

## Container runtimes

When running a Kubernetes cluster, you need to have Kubernetes installed - obviously. This will enable the orchestration part of the setup. To be able to run and interpret containers, then you need a container runtime installed. There is a big array of choices when it comes to container runtimes.

This is where Docker comes into play. Docker has its "Docker engine" runtime which is a runtime that is supported by Kubernetes. Other choices includes containerd, runc, and lxc. What these runtimes do when installed on the worker nodes are to bootstrap a image and turn it into a container, which is allocating a logical room (namespace) and hardware (cgroups) for a container to run. Different container runtimes support different sets of features - so choose the one that fits your use case.
