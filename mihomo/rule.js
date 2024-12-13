function main(config) {
    config["rules"] = [
      "DOMAIN-SUFFIX,linux.do,DIRECT",
      "DOMAIN-SUFFIX,fastadmin.net,DIRECT",
      "DOMAIN-SUFFIX,oaifree.com,DIRECT",
      "DOMAIN-SUFFIX,cobazaar.com,DIRECT",
      "DOMAIN-KEYWORD,edu.cn,DIRECT",
      "IP-CIDR,61.51.111.0/24,DIRECT",
      "IP-CIDR,62.234.123.0/24,DIRECT",
      "IP-CIDR,114.117.130.0/24,DIRECT",

      "DOMAIN-SUFFIX,bing.com,PROXY",
      // "PROCESS-NAME,Doubao.exe,PROXY",
      // "PROCESS-NAME,zen.exe,PROXY",
      // "PROCESS-NAME,msedge.exe,PROXY",
      
      "PROCESS-NAME,ChatGPT.exe,AIGC",
      ...config["rules"],
    ];
    return config;
  }