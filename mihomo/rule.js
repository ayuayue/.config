function main(config) {
  config["rules"] = [
    // "DOMAIN-SUFFIX,linux.do,DIRECT",
  
    ...config["rules"],
  ];
  return config;
}
