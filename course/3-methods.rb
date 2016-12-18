# coding: utf-8

* Metody - definice

** Vsechny vyrazy v Ruby 'maji hodnotu'!

def hello_world
  puts 'Hello!'
end


** parameter s defaultni hodnotou

def b(a = "No value!")
  puts a
end

** kazda metoda muze mit blok jako parametr

def c(array = [])
  if array.empty?
    # zavolame
    yield
  else
    array
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





