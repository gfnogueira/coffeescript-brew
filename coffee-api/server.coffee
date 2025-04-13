express = require 'express'
app = express()
port = 3000

# Lista de frases com contador
quotes = [
  { text: "Life begins after coffee.", count: 0 }
  { text: "Espresso yourself.", count: 0 }
  { text: "Coffee is a hug in a mug.", count: 0 }
  { text: "Behind every successful person is a substantial amount of coffee.", count: 0 }
  { text: "No coffee, no workee.", count: 0 }
]

# Página inicial
app.get '/', (req, res) ->
  res.send 'Welcome to the Coffee Quotes API! Try /quote, /quotes, or /quote/:id ☕'

# Frase aleatória
app.get '/quote', (req, res) ->
  index = Math.floor(Math.random() * quotes.length)
  quotes[index].count++
  res.json id: index, quote: quotes[index].text

# Todas as frases
app.get '/quotes', (req, res) ->
  res.json quotes: quotes.map((q, i) -> { id: i, quote: q.text, views: q.count })

# Frase por ID
app.get '/quote/:id', (req, res) ->
  id = parseInt req.params.id
  if id >= 0 and id < quotes.length
    quotes[id].count++
    res.json id: id, quote: quotes[id].text
  else
    res.status(404).json error: "Quote not found"

app.listen port, ->
  console.log "Coffee API running at http://localhost:#{port} ☕"