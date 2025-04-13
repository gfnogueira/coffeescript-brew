readline = require 'readline'

menu = [
  { name: "Espresso", price: 3.5 }
  { name: "Latte", price: 4.0 }
  { name: "Cappuccino", price: 4.2 }
  { name: "Cold Brew", price: 4.5 }
]

rl = readline.createInterface
  input: process.stdin
  output: process.stdout

console.log "☕ Welcome to the Coffee Terminal!"
console.log "Menu:"
menu.forEach (item, i) -> console.log "#{i+1}. #{item.name} - $#{item.price}"

rl.question "Choose your coffee (1-#{menu.length}): ", (choice) ->
  index = parseInt(choice) - 1
  if index < 0 or index >= menu.length
    console.log "Invalid choice."
  else
    console.log "You ordered a #{menu[index].name}. That'll be $#{menu[index].price}. Enjoy!"
  rl.close()