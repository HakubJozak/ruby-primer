# coding: utf-8

* Ruby

#
# $ ruby -v
# $ ruby -I.
# $ ruby -ractivesupport
# $ ruby my_script.rb

* IF

# podmineny prikaz
if a > 0
  puts "a je kladne"
elsif a == 0
  puts "a je nula"
else
  puts "a je zaporne"
end

puts "Hello #{name}!" unless name.nil?


* CASE

# /[a-z]*/ === "sdf"
# => true
# Integer  === 1
# => true

case a
when /dog/
  puts "I like dogs too, tell me more about them."
when Integer
  puts "No need to talk to me in numbers"
else
  puts "Sorry, I didn't get it"
end
