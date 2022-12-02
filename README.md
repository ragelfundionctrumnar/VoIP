## Docker Info
This is a pretty simple attempt to wrap 0perationPrivacy/VoIP into a docker stack, along with a local mongodb and caddy functioning as a reverse proxy.
### Docker Instructions
You still need to do all the stuff in twilio (or whatever voip provider you're using) as per the instructions below
1. Install docker and docker-compose (See https://devcoops.com/install-docker-compose-on-debian-11/ or equiv for whatever OS you're on)
1. Edit docker-compose.yml 
1. `docker-compose build`
1. `docker-compose up -d`
#### Local mongodb vs hosted mongodb
- If you'd like to continue to use cloud hosted mongodb, edit the docker-compose.yml as per the comments in the file
- Alternatively, if you'd like to copy your existing mongodb into the container's mongodb, once the docker stack is running, use the commands in copy_from_existing.sh which you can enter via `docker exec -it mongo /bin/bash`.  This will import all your users, contacts, etc. from the hosted DB.

## Main Instructions
- For instructions, visit [https://inteltechniques.com/voip.suite.html](https://inteltechniques.com/voip.suite.html)
- Or the [Wiki](https://github.com/0perationPrivacy/voip/wiki) section.


- View the [Changelog](CHANGELOG.md)

- Report [Security Issues](SECURITY.md)

- [Troubleshooting](https://github.com/0perationPrivacy/VoIP/wiki/Troubleshooting) tips

- Donate: https://www.OperationPrivacy.com/donate
  - **BTC (Bitcoin):** bc1qh592gld4u2m8vkedxr558l82066jwj5mgvspzq
  - **XMR (Monero):** 899MAgiqJpx6p2gKiizokTKY18o1arRddLXmojVt55A1caQZrHW24AiZoZ2zNJJtr7RAct8cXiwNbUcg9HMXtwTsHJCyXUt

![VoIP-Suite](https://user-images.githubusercontent.com/89225730/134289428-da8bcf88-5145-4ed6-9d6b-70d57b084e8f.png)


![VoIP-Suite-Overview](https://user-images.githubusercontent.com/89225730/204443981-d89391f3-b832-4f55-840e-32c665d9b4c1.png)


![GitHub forks](https://img.shields.io/github/forks/0perationPrivacy/voip?style=flat-square)
![GitHub](https://img.shields.io/github/license/0perationPrivacy/voip?style=flat-square)
