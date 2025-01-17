# Vlan

## Introduction

This is a place for me for store all my current, and forgotten, knowledge around VLAN, vlan tagging, vlan hopping, and other terms.

## What are vlans

TL;DR - Its adding a vlan id to the frame packet which will be parsed by switch ports.

They are _virtual local area networks_, which is compareable to a subnet. Main purpose is to use vlans to segment traffic to what makes sense. Vlans use its own broadcast domains, enabling seperation of devices.

VLANs is a level 2 feature.

## Vlan tagging

The connected host sends its traffic without any VLAN tag on the frames. When the frame reaches the switch port, the switch will add the VLAN tag.

### Untagged (U)

An untagged VLAN, also known as "U". The default VLAN (which has ID 1, VLAN1) is an untagged VLAN.

### Tagged (T)

A port is a `tagged port` when the interface is expecting frames containing VLAN tags. A tagged port is configured to carry all VLANs by default, but a filter can be applied to limit to specific VLANs.
