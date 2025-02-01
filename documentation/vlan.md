# Vlan

## Introduction

This is a place for me for store all my current, and forgotten, knowledge around VLAN, vlan tagging, vlan hopping, and other terms.

## What are vlans

TL;DR - Its adding a vlan id to the frame packet which will be parsed by switch ports.

They are _virtual local area networks_, which is compareable to a subnet. Main purpose is to use vlans to segment traffic to what makes sense. Vlans use its own broadcast domains, enabling seperation of devices.

VLANs is a level 2 feature.

## Vlan tagging

The connected host sends its traffic without any VLAN tag on the frames. When the frame reaches the switch port, the switch will add the VLAN tag.

### Untagged VLAN / Native VLAN



### Tagged VLAN

Any VLAN that is not the native VLAN that is explicitly permitted to flow through a switch port.

### Trunk port

Name of a switch port that is tagged with multiple VLAN tags.

### Access port

A port that is not tagged with any VLAN tags.
