require 'pry'
require 'pry-byebug'


5.times do
  binding.pry
  10.times do |param|
    puts param
  end

  fail 'sdfdsf'
end
