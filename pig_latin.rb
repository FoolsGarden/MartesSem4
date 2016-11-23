
def pig_latin_translator_2
  # puts "Escribe la frase a traducir: "
  paragraph = ARGV
  frase = paragraph


  alpha = ('a'..'z').to_a
  vowels = %w(a e i o u)
  consonants = alpha - vowels
  
  frase.map do |words|

  if vowels.include?(words[0])
    words + 'way'
  elsif consonants.include?(words[0]) &&  consonants.include?(words[1]) && consonants.include?(words[2])
    words[3..-1] + words[0..2] + 'ay'
  elsif consonants.include?(words[0]) && consonants.include?(words[1])
    words[2..-1] + words[0..1] + 'ay'
  elsif consonants.include?(words[0])
    words[1..-1] + words[0] + 'ay'
  else
    words
  end
 end
end

 puts pig_latin_translator_2.join(" ")
# ARGV
