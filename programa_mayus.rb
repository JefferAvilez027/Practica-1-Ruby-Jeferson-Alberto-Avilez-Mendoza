def convert_case(s)
  # Determinar si la primera palabra original estaba en mayúsculas
  is_first_word_upper = s[0] =~ /[A-Z]/
  
  # Reemplazar guiones y guiones bajos con un espacio
  s = s.gsub(/[-_]/, ' ')
  
  # Separar las palabras
  words = s.split
  
  # Convertir la primera palabra según su estado original
  words[0] = is_first_word_upper ? words[0].capitalize : words[0].downcase
  
  # Convertir el resto de las palabras a mayúsculas
  words[1..-1] = words[1..-1].map(&:capitalize)
  
  # Unir las palabras de nuevo en una cadena
  words.join(' ')
end

# Ejemplos de uso
puts convert_case("the-stealth-warrior")   # "the Stealth Warrior"
puts convert_case("The_Stealth_Warrior")    # "The Stealth Warrior"
puts convert_case("The_Stealth-Warrior")    # "The Stealth Warrior"
