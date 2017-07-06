local module = {}

local function wifi_wait_ip()
  if wifi.sta.getip()== nil then
    print("IP indisponivel, aguarde...")
  else
    tmr.stop(1)
    print("\n====================================")
    print("ESP8266 mode: " .. wifi.getmode())
    print("Chip ID "..node.chipid());
    print("MAC address: " .. wifi.ap.getmac())
    print("IP"..wifi.sta.getip())
    print("====================================")
    app.start()
  end
end

local function wifi_start(list_aps)
    if list_aps then
        for key,value in pairs(list_aps) do
            if config.SSID and config.SSID[key] then
                wifi.setmode(wifi.STATION);
                wifi.sta.config(key,config.SSID[key])
                wifi.sta.connect()
                print("Connectado " .. key .. " ...")
                --config.SSID = nil  -- can save memory
                tmr.alarm(1, 2500, 1, wifi_wait_ip)
            end
        end
    else
        print("Error getting AP list")
    end
end

function module.start()
  print("Configuring Wifi ...")
  wifi.setmode(wifi.STATION);
  wifi.sta.config("slackware","WifiBanc2018")
  wifi.sta.connect()
  app.start()
end

return module