* IRB
#
# $ irb
#
# vypis do STDOUT:
puts "Hello World!"
print "How are you?"
putc "sdlfjds"
# nacteni z STDIN:
a = gets

# Aritmetika
1+2 / 33
2**8 == 256
8 % 3 != 2

** System
# Spousteni systemovych prikazu:
system 'ls -la'
# => true / nil

# backticks - `` - vrati vysledek prikazu
working_dir = `pwd`
# do promenne working_dir ulozi vysledek

** Priklad: Pozdravte prihlaseneho uzivatele: "Hello Jakub!"


* Promenne

# ruby je dynamicky typovany jazyk
# promenne nemaji typ, nedeklaruji se
a = 1
a = "John"
a = Time.now
# vse se vyhodnoti az za behu
a.i_dont_exist

* Objekty

# vse je objekt
42.class
"dog".class
[1,2,3].class
/a-z*/.class

# Metody trid
Date.today.class
File.new('/etc/passwd').size

* Introspekce

# Datum
a = Date.today
a.respond_to? :to_s

# ziva dokumentace
puts a.methods
Date.constants
