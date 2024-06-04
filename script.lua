function random_joke()
  local jokes = {
      "Warum können Geister so schlecht lügen? Weil man durch sie hindurchsehen kann!",
      "Was macht ein Pirat am Computer? Er drückt die Enter-Taste!",
      "Warum können Elefanten nicht am Computer arbeiten? Weil sie Angst vor der Maus haben!"
  }
  local index = math.random(#jokes)
  return jokes[index]
end

local button = get("jokeButton")
button.on_click(function()
  local jokeText = get("jokeText")
  jokeText.set_content(random_joke())
end)