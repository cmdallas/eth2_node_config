# ⛓️ Chainlayer Techincal Assessment (DevOps)

## 📜 Assignment Instructions

For this technical assessment you will be provided with a server running Ubuntu 20.04 which you can access using SSH.

You are required to do the tasks yourself, but you are free to use any resources online or ask for help, including from us.

After completing the assignment, we will find a suitable time shortly after where you have 30 minutes to present how you approached this assignment,
how you solved it, and why you chose to use that setup. How you present is totally up to you.

### 📝 Tasks (and how I solved them)

**The [main] task is to set up an Ethereum 2 Beacon node (not validator) for the Goerli Testnet.**

**🤔 Problem:** The RPC service should be accessible via a reverse proxy of your choice.  
**✅ Solution:** Traefik

**🤔 Problem:** Adding HTTPS with self-signed certificates is optional, but will count positively towards the evaluation.  
**✅ Solution:** TLS termination at Traefik ingress

**🤔 Problem:** The server should be secured with a local firewall of your choice.
Remember to allow the inbound SSH connection before turning it on, so that you don’t lose access to the server.  
**✅ Solution:** UFW

**🤔 Problem:** Locally install basic monitoring of the server, such as cpu, memory and disk space.  
**✅ Solution:** Grafana + Prometheus

**🤔 Problem:** Make sure all services/software/configurations are persistent and can survive a reboot.  
**✅ Solution:** Services managed using SystemD.

---

## 🔧 Configuring Nodes

Target hosts are configure in `inventory/hosts.yml`

To apply the configuration run:

```bash
./bin/main.sh
```

## ⚗️ Testing

### 🤖 Services

```bash
HOST=54.212.130.3

# Lighhouse
curl -kH "Host:dev.chainlayer.lighthouse" https://${HOST}:45052/eth/v1/config/spec

# GETH
curl -kX POST https://${HOST}:8545 \
    -H "Content-Type: application/json" \
    -H "Host: dev.chainlayer.geth" \
   --data '{"jsonrpc":"2.0", "method":"eth_getBalance", "params":["0x0000000000000000000000000000000000000000","latest"], "id":1}'
```

### 📈 Grafana

Navigate to `http://{HOST}:3000` in a web browser.
