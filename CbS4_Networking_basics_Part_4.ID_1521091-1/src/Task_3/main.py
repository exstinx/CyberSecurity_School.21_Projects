from scapy.all import *

ip = IP(dst="127.0.0.1")
tcp = TCP(dport=12345, sport=RandShort(), flags="PA", seq=1000)
payload = "Dear Steel Cat! This is no attack, it's my humster Pinkie you should track"
packet = ip / tcp / payload

send(packet, verbose=False)
