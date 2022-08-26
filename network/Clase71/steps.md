docker run -dti --name test1 centos:7
docker run --network docker-test-network -dti --name test3 centos:7
"Networks": {
                "docker-test-network": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "c35d95bbdf96"
                    ],
                    "NetworkID": "72bae3bb59e86585f793e9586244a7c337ca07f260a89415f3b36e07bc124582",
                    "EndpointID": "2cfc8130dd9bd8cb628a9615a19232cfbcb4a64b5a97268d304819a443fc103a",
                    "Gateway": "172.124.10.1",
                    "IPAddress": "172.124.10.2",
                    "IPPrefixLen": 24,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:7c:0a:02",
                    "DriverOpts": null
                }
            }
docker run -d --network test1 nginx