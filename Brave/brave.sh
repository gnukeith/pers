#!/bin/sh

sudo mkdir -p /etc/brave/policies/managed

printf '%s\n' '{
  "BraveRewardsDisabled": true,
  "BraveWalletDisabled": true,
  "BraveVPNDisabled": 1,
  "BraveAIChatEnabled": false,
  "BraveTalkDisabled": true,
  "TorDisabled": true,

  "PasswordManagerEnabled": false,
  "AutofillCreditCardEnabled": false,
  "AutofillAddressEnabled": false,

  "EnableMediaRouter": false,

  "BraveP3AEnabled": false,
  "BraveStatsPingEnabled": false,
  "MetricsReportingEnabled": false,
  "BraveWebDiscoveryEnabled": false,

  "DnsOverHttpsMode": "secure",
  "DnsOverHttpsTemplates": "https://base.dns.mullvad.net/dns-query",

  "DefaultJavaScriptJitSetting": 2
}' | sudo tee /etc/brave/policies/managed/brave-policies.json > /dev/null
