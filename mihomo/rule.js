function main(config) {
    config["rules"] = [

      "DOMAIN-SUFFIX,bing.com,PROXY",
      "DOMAIN-SUFFIX,github.com,PROXY",
      "DOMAIN-SUFFIX,google.com,PROXY",
      "DOMAIN-SUFFIX,jetbrains.com,PROXY",
      "DOMAIN-SUFFIX,v2ex.com,PROXY",
      "DOMAIN-SUFFIX,notion.so,PROXY",
      "DOMAIN-SUFFIX,youtube.com,PROXY",
      "DOMAIN-SUFFIX,tiktok.com,PROXY",
      "DOMAIN-SUFFIX,instagram.com,PROXY",
      "DOMAIN-SUFFIX,twitter.com,PROXY",
      "DOMAIN-SUFFIX,facebook.com,PROXY",
      "DOMAIN-SUFFIX,linkedin.com,PROXY",
      "DOMAIN-SUFFIX,reddit.com,PROXY",
      "DOMAIN-SUFFIX,discord.com,PROXY",
      "DOMAIN-SUFFIX,x.com,PROXY",


      
      "PROCESS-NAME,ChatGPT.exe,AIGC",
      ...config["rules"],
    ];
    return config;
  }