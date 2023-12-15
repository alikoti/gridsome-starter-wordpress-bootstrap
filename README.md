# kube_deployments

# Firewall Rules

  iptables -t nat -A POSTROUTING -o ens160 -j MASQUERADE
  sudo iptables -t nat -A PREROUTING -i ens160 -p tcp --dport 32492 -j DNAT --to-destination 192.168.49.2:32492
