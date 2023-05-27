def capitalizer(text)
  if text.length >= 10  
    puts text.upcase!
  else
    puts text
  end
end

capitalizer("Hello world I am a test string")