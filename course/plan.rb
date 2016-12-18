* Ruby
#---------------------------------------
# https://www.ruby-lang.org/en/
# http://tryruby.org/levels/1/challenges/0
# http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/
#
# ruby -v
# ruby -I.
# ruby -ractivesupport

* IRB
#
# Interactive RuBy.
#
puts "Hello World!"


** Rubygems - balickovaci system
#
# gem install pry
#
a.methods
a.respond_to? :upcase


** Dynamicky typovany jazyk
a = 1
a = 'hello!'
a = 3 + (2 * 10)

** Objektove orientovany (Object, BasicObject)
BasicObject
Object
 

# - metody
1.class
"hello".reverse.upcase
22.to_s
"22.5".to_f




# Typy
#---------------------------------------


## String
'hello world!'
"hello #{name}!"
%{ this is a very long story }
?x == "x"
 # ---
 str.length
 str.reverse
 str.upcase
 str.downcase

## Regexp
/a-z+/
%r{a-z}

## Symboly
:red, :apple, :pear
:red.to_s

## Array
a = [ 1, 2, 'hello', Date.today ]
%w{ Jakub Tomas Alena }
# ---
a.each { |str| puts str.length }
a.map { |str| str.upcase }
a.map(&:upcase)


## Hash
{ :a => 1, :b => 2 }
{ a: 1, b: 2 }
{ Date.today => "Adam", Date.new(2016,6,20) => 'Jan' }


# Idiomy
#---------------------------------------
# https://www.sitepoint.com/ruby-golf/

a ||= (2**20).times.map { |x| x**3 / Math::sin(x) }

# ActiveSupport

1.day.ago
