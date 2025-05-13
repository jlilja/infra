#!/usr/bin/env bash

# TODO: Maybe put this list in another format and have a GHA do link
# checking so that I can put a badge on the repo and have some
# observability on whether something breaks in the future.

# List compiled from https://kb.synology.com/en-global/DSM/tutorial/What_websites_does_Synology_NAS_connect_to_when_running_services_or_updating_software
# List exclude all "only for china" entries and .cn domains
domains=(
    account.synology.com                # 3.98.150.230
    api.insight.synology.com            # 84.200.39.220
    apiauth.quickconnect.to             # 3.121.63.241
    autoupdate.synology.com             # 52.85.49.70
    autoupdate7.synology.com            # 18.165.140.112
    checkip.dyndns.org                  # 132.226.247.73
    checkip.synology.com                # 84.200.39.196
    checkip.webrtc.quickconnect.to      # 167.99.175.230
    checkipv6.quickconnect.to           # 167.99.175.230
    # checkipv6.synology.com            # checkipv6.digitalocean.synology.com.
    checkport.synology.com              # 112.121.122.67
    collectorautoupdate7.synology.com   # 52.85.49.118
    collectorupdate7.synology.com       # 3.164.68.10
    czr3.re.cs.quickconnect.to          # 143.244.58.91
    czr4.re.cs.quickconnect.to          # 185.152.64.138
    czr5.re.cs.quickconnect.to          # 89.187.188.251
    dataautoupdate7.synology.com        # 3.164.68.28
    dataupdate.synology.com             # 108.156.22.87
    dataupdate7.synology.com            # 108.156.22.69
    ddns.synology.com                   # 34.214.97.194
    dec.quickconnect.to                 # 3.121.63.241
    der5.re.cs.quickconnect.to          # 18.165.121.63
    der6.re.cs.quickconnect.to          # 89.187.169.109
    der8.re.cs.quickconnect.to          # 185.102.219.107
    der9.re.cs.quickconnect.to          # 138.199.37.169
    download.synology.com               # 203.74.127.91
    # download.synology.com/routerdb    # N/A
    frch.lp.cs.quickconnect.to          # 3.123.206.192
    frlp.lp.cs.quickconnect.to          # 18.195.122.69
    frp1.punch.cs.quickconnect.to       # 46.101.121.10
    frp2.punch.cs.quickconnect.to       # 46.101.119.59
    frp3.punch.cs.quickconnect.to       # 142.93.235.134
    frp4.punch.cs.quickconnect.to       # 142.93.235.17
    frr1.re.cs.quickconnect.to          # 185.93.2.158
    frr2.re.cs.quickconnect.to          # 185.93.2.155
    frr3.re.cs.quickconnect.to          # 185.93.2.157
    frr4.re.cs.quickconnect.to          # 185.93.2.187
    global.download.synology.com        # 3.164.206.28
    global.quickconnect.to              # 3.121.63.241
    global.synologydownload.com         # 172.67.28.107
    gofile.me                           # 18.165.121.45
    help.synology.com                   # 3.164.68.116
    kb.synology.com                     # 3.164.206.48
    keymaker.synology.com               # 123.51.153.87
    notification.synology.com           # 167.99.168.209
    orch.lp.cs.quickconnect.to          # 52.10.12.61
    orlp.lp.cs.quickconnect.to          # 52.39.32.173
    orp1.punch.cs.quickconnect.to       # 142.93.83.92
    orp2.punch.cs.quickconnect.to       # 142.93.91.101
    payment.synology.com                # 3.164.68.121
    pkgautoupdate.synology.com          # 52.85.49.75
    pkgautoupdate.synologyupdate.com    # 104.26.4.55
    pkgautoupdate7.synology.com         # 3.164.206.109
    pkgupdate.synology.com              # 52.85.49.112
    pkgupdate7.synology.com             # 52.85.49.96
    # report.synology.com/upload.php    # N/A
    sgr3.re.cs.quickconnect.to          # 209.58.169.46
    sgr4.re.cs.quickconnect.to          # 209.58.169.44
    signal1.fr.webrtc.quickconnect.to   # 46.101.121.10
    signal1.or.webrtc.quickconnect.to   # 142.93.83.92
    signal1.ty.webrtc.quickconnect.to   # 108.157.214.115
    signal2.fr.webrtc.quickconnect.to   # 46.101.119.59
    signal2.or.webrtc.quickconnect.to   # 142.93.91.101
    signal2.ty.webrtc.quickconnect.to   # 108.157.214.25
    signal3.fr.webrtc.quickconnect.to   # 142.93.235.134
    signal4.fr.webrtc.quickconnect.to   # 142.93.235.17
    sns.synology.com                    # 167.99.168.209
    subscribe.insight.synology.com      # 159.100.4.222
    supapi.synology.com                 # 35.183.151.54
    synoconf.synology.com               # 159.100.4.208
    synoconfkms.synology.com            # 52.85.49.124
    timestamp.synology.com              # 123.51.153.87
    twr1.re.cs.quickconnect.to          # 125.228.116.235
    twr2.re.cs.quickconnect.to          # 114.32.252.100
    twr3.re.cs.quickconnect.to          # 122.116.168.124
    twr4.re.cs.quickconnect.to          # 114.32.67.238
    twr5.re.cs.quickconnect.to          # 114.32.67.211
    twr6.re.cs.quickconnect.to          # 114.32.67.34
    typ1.punch.cs.quickconnect.to       # 108.157.214.25
    typ2.punch.cs.quickconnect.to       # 13.227.219.37
    update.synology.com                 # 108.156.23.192
    update7.synology.com                # 3.174.113.67
    usc.quickconnect.to                 # 52.39.206.233
    uslp.lp.cs.quickconnect.to          # 64.124.13.135
    usr1.re.cs.quickconnect.to          # 185.59.223.109
    usr2.re.cs.quickconnect.to          # 89.187.177.150
    usr3.re.cs.quickconnect.to          # 89.187.185.196
    usr5.re.cs.quickconnect.to          # 89.187.185.91
    usr6.re.cs.quickconnect.to          # 89.187.185.92
    www.synology.com                    # 3.164.206.121
)

for domain in "${domains[@]}"; do
    echo "$domain               # $(dig +short a $domain | tail -n1)"
done
