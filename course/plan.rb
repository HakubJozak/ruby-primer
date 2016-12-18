# Ruby
#---------------------------------------

# https://www.ruby-lang.org/en/
# http://tryruby.org/levels/1/challenges/0
# http://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/

# Rubygems, IRB & PRY 
#
# gem install pry
a.methods
a.respond_to?


## dynamicky_typovany
a = 1
a = 'hello!'
a = 3 + (2 * 10)

## objektove orientovany (Object, BasicObject)
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

## Regexp
/a-z+/
%r{a-z}

## Symboly
:red, :apple, :pear
:red.to_s

## Array
[ 1, 2, 'hello', Date.today ]
%w{ Jakub Tomas Alena }


## Hash 
{ :a => 1, :b => 2 }
{ a: 1, b: 2 }
{ Date.today => "Adam", Date.new(2016,6,20) => 'Jan' }


# Idiomy

a ||= (2**20).times.map { |x| x**3 / Math::sin(x) }

# ActiveSupport

1.day.ago
