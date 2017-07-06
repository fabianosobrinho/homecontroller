local module = {}

module.SSID = {}
module.HOST = "m13.cloudmqtt.com"
module.PORT = 14007
module.USERNAME = "uloqgwuw"
module.PASSWORD = "ckP7SbXZV1LK"
module.ID = node.chipid()
module.ENDPOINT = "/seu_endPoint/"..node.chipid()
return module