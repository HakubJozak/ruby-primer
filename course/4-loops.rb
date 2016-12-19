* Iterace

** FOR
# vypise cisla od 1 do 5
5.times do |i|
  puts i
end

# co dela downto?
5.downto(2) do |i|  puts i ; end

# a downto?

** Pozpatku

8.downto(3) { puts i }


** WHILE

a += 3 while a > 1
  

** Priklad: Vypiste seznam uzivatelu pocitace.

# Hint:
File.new('/etc/passwd').read.split(/\w*/)
