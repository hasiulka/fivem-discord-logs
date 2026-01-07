# FiveM Discord Logs

Simple and lightweight Discord webhook logger for FiveM servers.

This resource allows you to send basic server events directly to a Discord channel using webhooks.

---

## 🦇 Features
- Player connecting logs
- Discord embed messages
- Easy configuration
- Lightweight and standalone
- No framework required (ESX / QBCore not needed)

---

## 🦇 Installation
1. Download or clone this repository
2. Put the folder into your `resources` directory
3. Add this line to your `server.cfg`:
   ```
   ensure fivem-discord-logs
   ```
4. Open `config.lua` and set your Discord webhook URL

---

## ⚙️ Configuration
```lua
Config.Webhook = 'YOUR_DISCORD_WEBHOOK'
Config.ServerName = 'My FiveM Server'
Config.Color = 3447003
```

---

## 📋 Logs
Currently logged events:
- Player connecting to the server

More features can be added easily.

---

## 🦇 Usage
The resource works automatically after starting the server.
No commands required.

---

## 📌 Preview
When a player joins the server, a Discord embed message will be sent to the configured webhook channel.

---

## 📄 License
MIT License

---

## 🤝🏿 Contributing
Pull requests and suggestions are welcome.
