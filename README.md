# Docker: Mitre ATT&CK Navigator

Docker container serving the Mitre ATT&CK Navigator offline.

For details about the navigator see the upstream project under https://github.com/mitre-attack/attack-navigator/ .

## Run

    docker run -d -p 8080:80 fgierlinger/mitre-attack-navigator:latest
    
## Build

    docker build .

## License

MIT License, for details see [LICENSE.md](./LICENSE.md).

## Author

Frédéric Gierlinger