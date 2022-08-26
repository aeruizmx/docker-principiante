docker network inspect docker-test-network

[
    {
        "Name": "docker-test-network",
        "Id": "72bae3bb59e86585f793e9586244a7c337ca07f260a89415f3b36e07bc124582",
        "Created": "2022-08-26T01:38:05.430880617Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.124.10.0/24",
                    "Gateway": "172.124.10.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {},
        "Options": {},
        "Labels": {}
    }
]