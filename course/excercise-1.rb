# Vytisknete tabulku celych cisel od 1 do 20 a jejich
# mocnin druhych, tretich ... 6 mocnin
#

(1..20).each do |i|
  powers = (2..6).to_a.map { |exp| i**exp }
  result = powers.join(', ')
  puts "#{i}: #{result}"
end


