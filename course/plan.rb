# coding: utf-8
* Ekosystém
#---------------------------------------
# https://www.ruby-lang.org/en/
# http://tryruby.org/levels/1/challenges/0
# http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/
#
# ruby -v
# ruby -I.
# ruby -ractivesupport

** IRB
#
# Interactive RuBy.
#
# vypis retezce na obrazovku
puts "Hello World!"
print "How are you?"
putc "sdlfjds"

** Rubygems - balickovaci system
#
# gem install pry
#
a.methods
a.respond_to? :upcase

* Jazyk
** Dynamický
  # promenne nemaji typ, nedeklaruji se
  a = 1
  a = "John"
  a = Time.now
  # vse se vyhodnoti az za behu
  a.i_dont_exist

** Objektový 
  # vse je objekt
  42.class
  "dog".class
  [1,2,3].class
  /a-z*/.class

  # 
  Date.today.class
  File.new('/etc/passwd').open {}

** Metody - volani
  # bez zavorek i se zavorkami
  1.class
  "hello".reverse.upcase
  22.to_s
  "22.5".to_f

  # dynamicke volani
  a.send :to_s
  
** Typy
*** String

'hello world!'
"hello #{name}!"
%{ this is a very long story }
?x == "x"

# ---

str.length
str.reverse
str.upcase
str.downcase

*** Regexp
/a-z+/
%r{a-z}

*** Symboly
#
# jsou 'lehke' stringy
:red, :apple, :pear
:red.to_s

# Napriklad:
#
puts "string".object_id  
puts "string".object_id  
puts :symbol.object_id  
puts :symbol.object_id  

*** Array
a = [ 1, 2, 'hello', Date.today ]
%w{ Jakub Tomas Alena }
# ---
a.each { |str| puts str.length }
a.map { |str| str.upcase }
a.map(&:upcase)

*** Hash
{ :a => 1, :b => 2 }
{ a: 1, b: 2 }
{ Date.today => "Adam", Date.new(2016,6,20) => 'Jan' }


# Idiomy
#---------------------------------------
# https://www.sitepoint.com/ruby-golf/

a ||= (2**20).times.map { |x| x**3 / Math::sin(x) }

# ActiveSupport

1.day.
*** Třídy

class 
** Metody - definice
** Bloky

# Vypsat cisla od 1 do 5
5.times do |i|
  puts i
end

** Iterace
- each
- while
- repeat  


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



  
