# ☕ Coffee Quotes API in CoffeeScript

This is a small API built using **CoffeeScript** and **Express.js**, created as a proof of concept (PoC) to explore backend development with CoffeeScript. It serves random coffee-related quotes and tracks how often each one is requested.

## 💡 Features

- `GET /` — Welcome message
- `GET /quote` — Returns a random coffee quote
- `GET /quotes` — Returns all quotes with view counts
- `GET /quote/:id` — Returns a specific quote by ID
- Tracks the number of times each quote is accessed

## 🚀 How to Run

### 1. Install dependencies

If you haven't already, install CoffeeScript and Express:

```bash
npm install -g coffeescript
npm install express
```

### 2. Run the server

```bash
coffee server.coffee
```

### 3. Try it in your browser or with curl

- `http://localhost:3000/` → Welcome message  
- `http://localhost:3000/quote` → Random quote  
- `http://localhost:3000/quotes` → All quotes  
- `http://localhost:3000/quote/2` → Specific quote by ID

## 📁 Project Structure

```
coffee-api/
├── server.coffee   # CoffeeScript source code
├── package.json    # NPM config and dependencies
└── README.md       # This file
```

---
