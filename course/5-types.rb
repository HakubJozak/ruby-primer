# coding: utf-8
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
