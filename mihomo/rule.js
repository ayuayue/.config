function main(config) {
  config["rules"] = [
    // "DOMAIN-SUFFIX,linux.do,DIRECT",
    "DOMAIN-SUFFIX,fastadmin.net,DIRECT",
    "DOMAIN-SUFFIX,oaifree.com,DIRECT",
    "DOMAIN-SUFFIX,cobazaar.com,DIRECT",

    "DOMAIN-SUFFIX,okxpc.com,PROXY",
    "DOMAIN-SUFFIX,xctexchange.com,PROXY",
    "DOMAIN-SUFFIX,bing.com,PROXY",
    "DOMAIN-SUFFIX,github.com,PROXY",
    "DOMAIN-SUFFIX,notion.so,PROXY",

    "DOMAIN-KEYWORD,edu.cn,DIRECT",

    "IP-CIDR,61.51.111.0/24,DIRECT",
    "IP-CIDR,62.234.123.0/24,DIRECT",
    "IP-CIDR,114.117.130.0/24,DIRECT",

    "PROCESS-NAME,WeChat.exe,DIRECT",
    "PROCESS-NAME,GameViewerServer.exe,DIRECT",
    "PROCESS-NAME,ToDesk.exe,DIRECT",
    "PROCESS-NAME,GameViewer.exe,DIRECT",
    "PROCESS-NAME,CorpLink.exe,DIRECT",
    
    "PROCESS-NAME,Doubao.exe,PROXY",
    "PROCESS-NAME,Telegram.exe,PROXY",
    "PROCESS-NAME,Notion.exe,PROXY",
    "PROCESS-NAME,ChatGPT.exe,AIGC",

    ...config["rules"],
  ];
  return config;
}
