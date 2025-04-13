readline = require 'readline'

rl = readline.createInterface
  input: process.stdin
  output: process.stdout

quotes = [
  "You can do it! Just like a strong espresso.",
  "Keep grinding—great coffee takes time.",
  "Believe in yourself. Even instant coffee has a purpose.",
  "Stay grounded. Stay brewed. ☕"
]

rl.question "What's your name? ", (name) ->
  index = Math.floor(Math.random() * quotes.length)
  console.log "\nHello, #{name}! Here's your motivation for today:"
  console.log quotes[index]
  console.log ""
  rl.close()