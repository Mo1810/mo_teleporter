# mo_teleporter
Teleport-Creation Script for FiveM [lua;standalone/esx]

For support please write an issue and I will proceed it as soon as possible. Or feel free to join my discord and ask for help. Link in my profile.

### ! THERE ARE TWO OPTIONS, STANDALONE OR WITH ESX (just for one notification, while standing in a marker) !

# INSTALL
- Click green button `Code` 
- "Download ZIP"
- Open zip file, open folders until you see `README.md` and extract folder `mo_teleporter`/`mo_teleporter-standalone` into your resources
- Put `ensure mo_teleporter`/`ensure mo_teleporter-standalone` in `server.cfg`

# HOW IT WORKS
- Add your teleporters into `config.lua` file
  - define whether the teleporter should be two-ways or only one-way
  - define marker style (type, color[r,g,b,a], scale, ...)
  - `label` in config is just for displaying a notification ingame
  - ![notification](https://i.imgur.com/iU7YUYs.png)
- in `standalone` edition you can add your own notification-export/function by adding it in `teleporter-c.lua`, line `16`
- for further assistance follow the mentioned options above

![marker](https://i.imgur.com/vinnB9V.png)
