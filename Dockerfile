FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    nmap \
    yersinia \
    onesixtyone \
    ike-scan \
    hydra \
    metasploit-framework \
    snmpcheck \
    snmp \
    cisco-auditing-tool \
    cisco-torch \
    cisco-global-exploiter \
    crackmapexec \
    iproute2 \
    net-tools \
    dnsutils \
    tcpdump \
    iputils-ping \
    isc-dhcp-client \
    irpas \
 && apt clean && rm -rf /var/lib/apt/lists/*

# Entry point
CMD [ "bash" ]
