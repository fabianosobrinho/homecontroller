-- Conexao na rede Wifi
wifi.setmode(wifi.STATION)
wifi.sta.config("slackware","12345678")
print("\n====================================")
print("ESP8266 mode: " .. wifi.getmode())
print("Chip ID "..node.chipid());
print("MAC address: " .. wifi.ap.getmac())
print("IP"..wifi.sta.getip())
print("====================================")
app = require("app")  
config = require("config")  
app.start() 
