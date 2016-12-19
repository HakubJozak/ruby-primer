# coding: utf-8
** Typy
*** String

'hello world!'
"hello #{name}!"

%{ this is a very long story }

?x == "x"

# ---
str = 'Hello'
 
str.length
str.reverse
str.upcase
str.downcase
str.capitalize
str[0..5]
str[0..-3]
str.chomp
str.chop

str.strip
str.lstrip
str.rstrip

str.concat
str << ' World!'
str.sub
str.gsub
str * 333

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
a.shift
a.unshift
a.join
a << 1
a.concat [ 'another array' ]

*** Hash
{ :a => 1, :b => 2 }
{ a: 1, b: 2 }
{ Date.today => "Adam", Date.new(2016,6,20) => 'Jan' }


*** Třídy

class Dog
  def initialize(name)
    @name = name
    @power = 2
  end

  def bark!
    puts 'HAF' * @power
  end

  def name
    @name
  end
end

a = Dog.new('Alik')
a.bark!

{
  
}
