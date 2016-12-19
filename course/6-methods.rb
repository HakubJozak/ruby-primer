# coding: utf-8

* Metody - definice

** Vsechny vyrazy v Ruby 'maji hodnotu'!

def hello_world(name = 'World')
  return unless name
  puts "Hello #{name}!"
end

hello_world "John"
hello_world nil
hello_world

** parameter s defaultni hodnotou

def b(a = "No value!")
  puts a
end

** kazda metoda muze mit blok jako parametr

class Fixnum
  def each_odd
    if self % 2 == 1
      yield
    end
  end
end




** explicitne - & znaci blok jako posledni parametr

def c(array = [ 1, 2, 3 ], &block)
  if block_given?
    # nebo block.call
    yield
  else
    array.each(&block)
  end
end
