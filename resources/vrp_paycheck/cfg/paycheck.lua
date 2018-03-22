
local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salario: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Pagamento de contas: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 30 -- minutes between payment for paycheck
cfg.minutes_bill = 30 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Compania de Seguro" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["police.paycheck"] = 2300,
  ["coronelrota.paycheck"] = 10500,
  ["tenentecoronelrota.paycheck"] = 9000,
  ["capitaorota.paycheck"] = 7000,
  ["tenenterota.paycheck"] = 5000,
  ["soldadorota.paycheck"] = 3000,
  ["coronelpmesp.paycheck"] = 10350,
  ["capitaopmesp.paycheck"] = 8570,
  ["tenentepmesp.paycheck"] = 6490,
  ["sargentopmesp.paycheck"] = 4750,
  ["cabopmesp.paycheck"] = 3200,
  ["soldadopmesp.paycheck"] = 1800,
  ["comandanterocam.paycheck"] = 11250,
  ["coronelrocam.paycheck"] = 9350,
  ["tenentecoronelrocam.paycheck"] = 6900,
  ["subtenenterocam.paycheck"] = 5350,
  ["caborocam.paycheck"] = 2800,
  ["soldadorocam.paycheck"] = 2200,
  ["medico.paycheck"] = 12000,
  ["paramedico.paycheck"] = 7000,
  ["socorrista.paycheck"] = 5300,
  ["enfermeiro.paycheck"] = 3700,
  ["advogado.paycheck"] = 2000,
  ["emergency.paycheck"] = 2400,
  ["taxi.paycheck"] = 1800,
  ["garimpeiro.paycheck"] = 1600,
  ["repair.paycheck"] = 1800,
  ["bankdriver.paycheck"] = 1200,
  ["diretorchefe.paycheck"] = 15000,
  ["delivery.paycheck"] = 800
}

cfg.bill = { -- ["permission"] = withdrawal
  ["police.paycheck"] = 450,
  ["advogado.paycheck"] = 250,
  ["emergency.paycheck"] = 150,
  ["taxi.paycheck"] = 125,
  ["garimpeiro.paycheck"] = 100,
  ["repair.paycheck"] = 100,
  ["bankdriver.paycheck"] = 220,
  ["diretorchefe.paycheck"] = 2500,
  ["delivery.paycheck"] = 350
}

return cfg

