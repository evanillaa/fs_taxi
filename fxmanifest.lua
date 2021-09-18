fx_version 'adamant'

game 'gta5'

description 'FS Taxi'

version 'legacy'

shared_script '@es_extended/imports.lua'

server_scripts {
   	'server/server.lua'
}

client_scripts {
   	'client/vehicle.lua',
   	'client/client.lua'
}
