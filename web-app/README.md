# ☕ CoffeeScript Temperature Converter

This is a small web project built with **CoffeeScript**, created as a proof of concept (PoC) to explore the language.  
The app converts temperatures between Celsius and Fahrenheit directly in the browser.

## 💡 Features

- Convert Celsius to Fahrenheit
- Convert Fahrenheit to Celsius
- Simple UI using HTML + JavaScript compiled from CoffeeScript

## 🚀 How to Run

### 1. Install CoffeeScript (if not already installed)

```bash
npm install -g coffeescript
```

### 2. Compile the `.coffee` file

```bash
coffee -c app.coffee
```

This will generate the `app.js` file used by `index.html`.

### 3. Open the project in the browser

You can use a local server (e.g., Python):

```bash
python3 -m http.server
```

Then open in your browser:

```
http://localhost:8000
```

### 4. Use the converter

Enter the temperature, select the conversion type, and click **Convert**. The result will appear on the screen.

## 📁 Project Structure

```
web-app/
├── index.html   # Main HTML page
├── app.coffee   # CoffeeScript source code
└── app.js       # Generated JavaScript (do not edit manually)
```

---

