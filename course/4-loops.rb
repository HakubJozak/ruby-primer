* Iterace

** FOR
# vypise cisla od 1 do 5
5.times do |i|
  puts i
end

** Pozpatku

8.downto(3) { puts i }


** WHILE

while a > 1
  a += 3
end

** Priklad: Vypiste seznam uzivatelu pocitace.

# Hint:                                       
File.new('/etc/passwd').read
