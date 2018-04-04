
dependency "vrp"

client_scripts{ 
  "lib/Proxy.lua",
  "lib/Tunnel.lua",
  "cl_sedex.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "sv_sedex.lua"
}