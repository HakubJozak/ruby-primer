require 'pry'
require 'pry-byebug'


def nesmysl
  5.times do |i|
    10.times do |param|
      puts param
    end
  end
end

binding.pry
