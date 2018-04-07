-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["Folha de maconha"] = {"Planta de maconha", "Planta de maconha.", nil, 0.75}, -- no choices
  ["Folha de Coca"] = {"Folha de Coca", "Folha de Coca.", nil, 0.85}, -- no choices
  ["Cocaina"] = {"Cocaina", "Cocaina em po.", nil, 0.75}, -- no choices
  ["Crystal Melamine"] = {"Crystal Melamine", "Crystal Melamine.", nil, 1.00}, -- no choices
  ["Metanfetamina"] = {"Metanfetamina", "Cristal de Metanfetamina.", nil, 0.75}, -- no choices  
  ["Pedra"] = {"Pedra", "Pedra bruta.", nil, 0.50}, -- no choices
  ["Diamante Bruto"] = {"Diamante Bruto","Diamante sem lapidação", nil, 5.00}, -- no choices
  ["Diamante"] = {"Diamante", "Diamante", nil, 1.00}, -- no choices
  ["Picareta"] = {"Picareta","Para garimpar diamante", nil, 0.50},
  ["toclonecards"] = {"Cartão Clonável", "Para clonar.", nil, 0.01}, -- no choices
  ["clonedcards"] = {"Cartão clonado", "Para vender.", nil, 0.01}, -- no choices
  ["Carteira Militar"] = {"Carteira Militar","Carteira de permissão para policiais.", nil, 0.01}, -- no choices
  ["Porte de Arma"] = {"Porte de Arma", "licença para arma.", nil, 0.00}, -- no choices
  ["OAB"] = {"OAB", "Carteira de Advogado.", nil, 0.01}, -- no choices
  ["Maconha"] = {"Maconha", "Processada.", nil, 0.75}, -- no choices
  ["bank_money"] = {"Dinheiro do Banco", "$.", nil, 0}, -- no choices
  ["Rede"] = {"Rede", "Para pescar Tartaruga", nil, 0.50}, -- no choices
  ["Tartaruga"] = {"Tartaruga", ".", nil, 5.00}, -- no choices
  ["Cadaver"] = {"Cadaver.","Corpo morto", nil, 20.00}, -- no choices
  ["Rim"] = {"Rim","orgao", nil, 3.00}, -- no choices
  ["Coracao"] = {"Coracao","orgao", nil, 5.00}, -- no choices
  ["Figado"] = {"Figado","orgao", nil, 3.00}, -- no choices
  ["Sal"] = {"Sal","Sal sem refino", nil, 5.00}, -- no choices
  ["Sal Refinado"] = {"Sal Refinado","Sal Refinado", nil, 2.00}, -- no choices
  ["Pa"] = {"Pa","Para coleta", nil, 0.50}, -- no choices
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[Brasil RP] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
