#!/bin/sh

sudo mkdir -p /etc/brave/policies/managed

printf '%s\n' '{
  "BraveRewardsDisabled": true,
  "BraveWalletDisabled": true,
  "BraveVPNDisabled": 1,
  "BraveAIChatEnabled": false,
  "BraveTalkDisabled": false,
  "TorDisabled": true,
  "DnsOverHttpsMode": "secure",
  "DnsOverHttpsTemplates": "https://base.dns.mullvad.net/dns-query"
}' | sudo tee /etc/brave/policies/managed/brave_policies.json > /dev/null
