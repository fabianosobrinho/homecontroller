local module = {}

module.SSID = {}
module.HOST = "m13.cloudmqtt.com"
module.PORT = 14007
module.USERNAME = "wqrtreterter"
module.PASSWORD = "fghjgkjghjgfhfgh"
module.ID = node.chipid()
module.ENDPOINT = "/seu_endPoint/"..node.chipid()
return module
