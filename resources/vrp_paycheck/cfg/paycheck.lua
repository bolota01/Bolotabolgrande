
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
  ["prefeito.paycheck"] = 10000,
  ["aguia.paycheck"] = 11000,
  ["agente.paycheck"] = 4200, 
  ["investigador.paycheck"] = 5300,
  ["delegado.paycheck"] = 7500,
  ["superitendente.paycheck"] = 8000,
  ["superitendenteregional.paycheck"] = 9000,
  ["superitendentegeral.paycheck"] = 10000,
  ["goe.paycheck"] = 8000,
  ["comandante.paycheck"] = 13000,
  ["tcoronel.paycheck"] = 10000,
  ["major.paycheck"] = 9000,
  ["capitao.paycheck"] = 8000,
  ["tenente.paycheck"] = 7000,
  ["1tenente.paycheck"] = 6800,
  ["2tenente.paycheck"] = 6500,
  ["subtenente.paycheck"] = 6200,
  ["sargento.paycheck"] = 6000,
  ["1sargento.paycheck"] = 5800,
  ["2sargento.paycheck"] = 5500,
  ["3sargento.paycheck"] = 5200,
  ["cabo.paycheck"] = 4000,
  ["soldado.paycheck"] = 3100,
  ["recruta.paycheck"] = 2500,
  ["samuchefe.paycheck"] = 10000,
  ["doutor.paycheck"] = 8500,
  ["medicochefe.paycheck"] = 7000,
  ["medico.paycheck"] = 5200,
  ["paramedico.paycheck"] = 3800,
  ["socorrista.paycheck"] = 2800,
  ["advogado.paycheck"] = 3000,
  ["emergency.paycheck"] = 2400,
  ["taxi.paycheck"] = 1800,
  ["garimpeiro.paycheck"] = 1600,
  ["jornalista.paycheck"] = 3000,
  ["repair.paycheck"] = 1800,
  ["bankdriver.paycheck"] = 1200,
  ["diretorchefe.paycheck"] = 15000,
  ["delivery.paycheck"] = 800
}

cfg.bill = { -- ["permission"] = withdrawal
  ["police.paycheck"] = 500,
  ["advogado.paycheck"] = 150,
  ["emergency.paycheck"] = 120,
  ["taxi.paycheck"] = 125,
  ["garimpeiro.paycheck"] = 100,
  ["repair.paycheck"] = 100,
  ["jornalista.paycheck"] = 150,
  ["bankdriver.paycheck"] = 220,
  ["diretorchefe.paycheck"] = 2500,
  ["delivery.paycheck"] = 120
}

return cfg

