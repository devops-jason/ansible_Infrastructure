#!/usr/bin/env bash

echo "Pinging Jenkins Hosts"
echo ""

ansible jenkins -m ansible.builtin.ping

echo ""
echo "Pinging Kubernetes Controlplane Hosts"
echo ""

ansible kubernetes_controlplane -m ansible.builtin.ping

echo ""
echo "Pinging Kubernetes Node Hosts"
echo ""

ansible kubernetes_node -m ansible.builtin.ping

echo ""
echo "Pinging Infrastructure Servers Hosts"
echo ""

ansible infrastructure_server -m ansible.builtin.ping