
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["superadmin"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um SuperAdmin."}) end},
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem"
  },
  ["admin"] = {
    "admin.tickets",
    "admin.announce",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
	"armas.traficante",
    "player.custom_sound",
    "player.display_custom",
	"police.menu_interaction",
    "player.coords",
    "player.tptome",
	"admin.deleteveh",
	"admin.spawnveh",
	"admin.godmode",
	"player.tptowaypoint",
	"player.cmd_mask",
	"admin.easy_unjail",
	"police.door",
	"police.license",
	"police.licensearm",
	"admin.spikes",
    "player.tpto"
  },
  ["moderador"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~r~moderador."}) end},
    "player.group.add",
    "player.group.remove",
	"player.whitelist",
	"player.unwhitelist",
    "player.noclip",
	"police.door",
    "player.tptome",
    "player.list",
	"police.license",
	"police.licensearm",
	"police.menu_interaction",
    "player.kick",
    "player.tpto"
  },   
  -- the group user is auto added to all logged players
  ["user"] = {
    "police.menu",
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "police.check",
    "player.calladmin",
	"emergency_heal",
    "police.seizable" -- can be seized
  }, 
-- BASE PARA AS PM 
 ["Policia Militar"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "police.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "police.easy_unjail",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  
  -- PATENTES ROTA
  ["Coronel da ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "coronelfardas.cloakroom",
    "police.pc",
    "police.carteira",
  "radar.pass",
  "holdup.police",
  "coronel.door",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "coronelrota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Tenente Coronel da ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
  "police.carteira",
    "police.menu",
    "coronelfardas.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "tenentecoronelrota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Capitão da ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentorota.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "police.carteira",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "capitaorota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Tenente da ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentorota.cloakroom",
    "police.pc",
  "radar.pass",
  "police.carteira",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "tenenterota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Soldado da ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentorota.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "police.carteira",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "soldadorota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  -- POLICIA FEDERAL
  ["Delegado PF"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.carteira",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "federal.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "coronelrota.paycheck",
  "rota.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },  
  
  -- PATENTES PMESP
  ["Coronel PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.carteira",
  "police.menu_interaction",
  "police.door",
  "coronel.door",
    "police.menu",
    "coronelpm.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "coronelpmesp.paycheck",
  "pmespof.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Capitão PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentopm.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.carteira",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "capitaopmesp.paycheck",
  "pmespof.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Tenente PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentopm.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
  "police.carteira",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "tenentepmesp.paycheck",
  "pmespof.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Sargento PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentopm.cloakroom",
    "police.pc",
    "police.carteira",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "sargentopmesp.paycheck",
  "pmespof.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Cabo PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "police.carteira",
    "fardamentopm.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "cabopmesp.paycheck",
  "pmespsub.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Soldado PMESP"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "fardamentopm.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.carteira",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "soldadopmesp.paycheck",
  "pmespsub.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  
  -- PATENTES ROCAM
  ["Comandante Geral ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "rocam.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "police.carteira",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "comandanterocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Coronel ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
  "coronel.door",
    "police.menu",
    "rocam.cloakroom",
    "police.pc",
    "police.carteira",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "coronelrocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Tenente Coronel ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "rocam.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "police.carteira",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "tenentecoronelrocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Sub Tenente ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "rocam.cloakroom",
    "police.carteira",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "subtenenterocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Cabo ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "rocam.cloakroom",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "police.carteira",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "caborocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  ["Soldado ROCAM"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.group.add",
    "player.group.remove",
    "player.list",
  "police.easy_jail",
  "police.easy_unjail",
  "police.easy_fine",
  "police.easy_cuff",
  "police.drag",
  "police.menu_interaction",
  "police.door",
    "police.menu",
    "rocam.cloakroom",
    "police.carteira",
    "police.pc",
  "radar.pass",
  "holdup.police",
  "pm2.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
  "police.license",
  "police.licensearm",
  "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
  "police.askid",
  "soldadorocam.paycheck",
  "rocam.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
  
  -- EMPREGOS SAMU
  ["Médico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
  "emergency_heal",
    "emergency.service",
  "hospital.garagem",
  "emergency.medkit",
  "medico.paycheck",
  "radar.pass",
  "samu.cloakroom"
  },
  
  ["Paramédico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
  "emergency_heal",
    "emergency.service",
  "hospital.garagem",
  "emergency.medkit",
  "paramedico.paycheck",
  "radar.pass",
  "samu.cloakroom"
  },
  
  ["Socorrista"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
  "emergency_heal",
    "emergency.service",
  "hospital.garagem",
  "emergency.medkit",
  "socorrista.paycheck",
  "radar.pass",
  "samu.cloakroom"
  },
  
  ["Enfermeiro"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
  "emergency_heal",
    "emergency.service",
  "hospital.garagem",
  "emergency.medkit",
  "enfermeiro.paycheck",
  "radar.pass",
  "samu.cloakroom"
  },


  --Empregos Civil
  ["Mecânico"] = {
    _config = { gtype = "job"},
    "vehicle.repair",
    "vehicle.replace",
	"repair.paycheck",
	"mission.repair.satellite_dishes",
	"mission.repair.wind_turbines",
    "repair.service",
	"repair.garagem"
  },
  ["Taxi"] = {
    _config = { gtype = "job" },
    "taxi.service",
	"taxi.paycheck",
	"mission.taxi.passenger",
	"taxi.garagem"
  },
  ["Entregador"] = {
    _config = { gtype = "job" },
	"delivery.paycheck",
	"delivery.service",
  "mission.delivery.food",
	"delivery.garagem"
  },
  ["Ladrão de Carros"] = {
    _config = { gtype = "job" },
    "mission.carjack.vehicle"
  },
  ["Traficante de Maconha"] = {
    _config = { gtype = "job" },
	"harvest.weed",
	"process.weed",
  "build.weed",
	"mission.delivery.weed",
	"mission.delivery.pot"
  },
  ["Traficante de Metanfetamina"] = {
    _config = { gtype = "job" },
	"harvest.metanfetamina",
	"process.metanfetamina",
  "build.metanfetamina",
	"mission.delivery.metanfetamina",
	"mission.delivery.pot3"
  },  
  ["Traficante de Cocaina"] = {
    _config = { gtype = "job" },
	"process.cocaina",
	"harvest.cocaina",
  "build.cocaina",
	"mission.delivery.cocaina",
	"mission.delivery.pot2"
  },
  ["Garimpeiro de Diamantes"] = {
    _config = { gtype = "job" },
  "harvest.diamante",
  "process.diamante",
  "build.diamante",
  "garimpeiro.paycheck"
  },  
  ["Traficante de Tartaruga"] = {
    _config = { gtype = "job" },
  "harvest.tartaruga",
  "tartaruga.garagem",
	"process.Tartaruga"
  },
  ["Traficante de Armas"] = {
    _config = { gtype = "job" },
	"build.gun",
	"mission.delivery.pistol",
	"mission.delivery.shotgun",
	"mission.delivery.smg",
	"mission.gunrunner.shipment"
  },
  ["Assassino Profissional"] = {
    _config = { gtype = "job" },
	"hitman.takebounty",
    "-hitman.addbounty",
	"-player.blips",
	"mission.hitman"
  },
  ["Hacker"] = {
    _config = { gtype = "job" },
  "-player.blips",
  "sell.clonedcards",
  "pick.toclonecards",
  "clone.cards",
  "hacker.hack"
  },
  ["mugger"] = {
    _config = { gtype = "job" },
	"-player.blips",
	"mugger.mug"
  },
  ["Advogado"] = {
    _config = { gtype = "job" },
	"advogado.oab",
  "advogado.paycheck"
  },
  ["Jornalista"] = {
    _config = { gtype = "job" },
  "jornalista.paycheck"
  },
  ["Prefeito"] = {
    _config = { gtype = "job" },
  "prefeito.paycheck"
  },
  ["Transportador de Valores"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"Você é um piloto de carro forte."}) end
	},
	"mission.bankdriver.moneybank",
	"mission.bankdriver.moneybank2",
	"bankdriver.vehicle",
	"bankdriver.paycheck",
	"bankdriver.money"
  },  
  ["Desempregado"] = {
    _config = { gtype = "job" },
	"player.paycheck"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Agencia de Empregos"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
	"Taxi",
	"Transportador de Valores",
  "Mecânico",
  "Garimpeiro de Diamantes",
  "Advogado",
	"Entregador",
  "Desempregado"
  },
  ["Empregos Ilegais"] = {
    _config = {x = 707.324462890625, y = -966.986511230469, z = 30.4128551483154, blipid = 351, blipcolor = 49},
	"Ladrão de Carros",
	"Traficante de Metanfetamina",
	"Traficante de Maconha",
	"Traficante de Tartaruga",
	"Traficante de Cocaina",
	"Hacker"
  } 
}

return cfg

