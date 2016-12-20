# coding: utf-8
** Výjimky
*** Vyvolani

fail ":("
raise ":(("

*** Osetreni

# Libovolny blok muze mit 'rescue' a 'ensure' casti
begin
  a.i_dont_exist(42)
rescue
  puts 'Something is wrong.'
end

# Kazda metoda ma take 0..n rescue casti a jednu ensure
def hello
  # ...
rescue => e
  puts e.message
end






