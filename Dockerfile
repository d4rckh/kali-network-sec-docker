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
 && apt clean && rm -rf /var/lib/apt/lists/*

# Entry point
CMD [ "bash" ]
