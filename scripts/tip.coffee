readline = require 'readline'

rl = readline.createInterface
  input: process.stdin
  output: process.stdout

rl.question "Enter the bill amount: $", (amountStr) ->
  amount = parseFloat amountStr
  if isNaN(amount) or amount <= 0
    console.log "Please enter a valid number."
    rl.close()
    return

  rl.question "Enter tip percentage (e.g. 10, 15, 20): ", (tipStr) ->
    tip = parseFloat tipStr
    if isNaN(tip) or tip < 0
      console.log "Please enter a valid tip percentage."
    else
      total = amount + (amount * tip / 100)
      console.log "Total with tip: $#{total.toFixed(2)}"
    rl.close()