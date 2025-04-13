window.convert = ->
  temp = parseFloat(document.getElementById("tempInput").value)
  type = document.getElementById("conversionType").value
  result = document.getElementById("result")

  if isNaN(temp)
    result.innerText = "Please enter a valid number."
    return

  converted = if type is "toF"
    (temp * 9 / 5) + 32
  else
    (temp - 32) * 5 / 9

  unit = if type is "toF" then "°F" else "°C"
  result.innerText = "Result: " + converted.toFixed(2) + " " + unit