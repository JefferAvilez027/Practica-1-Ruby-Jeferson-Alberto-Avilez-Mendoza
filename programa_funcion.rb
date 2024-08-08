def convert_case(str)
  words = str.split(/[-_]/)

  first_word_upper = words[0] == words[0].capitalize

  words[0] = first_word_upper ? words[0] : words[0].capitalize
  words[1..-1].map!(&:capitalize)

  words.join(' ')
end

puts convert_case("the-stealth-warrior")    
puts convert_case("The_Stealth_Warrior")     
puts convert_case("The_Stealth-Warrior")     
