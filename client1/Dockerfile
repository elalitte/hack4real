FROM debian:latest
RUN apt update && apt install -y tcpdump scapy vim iptables traceroute procps
COPY arpCachePoison.py /root
CMD tail -f /dev/null
