# coding: utf-8

** Metody - definice

# vsechny vyrazy v Ruby maji navratovou hodnotu!
def a
  puts 'Hello!'
end

# parameter s defaultni hodnotou
def b(a = nil)
  puts a
end

# s blokem implicitne
def b(array)
  yield
end

# s blokem explicitne





** Iterace

[ 1, 3, 5 ].each do |i|
  puts i * 2
end

while true
end


** Výjimky
*** Vyvolani

fail ":("
raise ":(("

*** Osetreni

# Libovolny blok muze mit 'rescue' a 'ensure' casti
begin
  a.i_dont_exist(42)
rescue NoMethodError
  puts 'Something is wrong.'
ensure
  puts 'I get called always'
end

# Kazda metoda ma take 0..n rescue casti a jednu ensure
def hello
  # ...
rescue => e
  puts e.message
end

** Rubygems - balickovaci system
#
# $ gem install pry
#
a.methods
a.respond_to? :upcase

* Debugovani
binding.pry
