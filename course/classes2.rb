# coding: utf-8
class User
  DICTIONARY = {
    'jakub' => 'kuba',
    'petr'  => 'peťa',
    'ladislav' => 'laďa',
    'antonín' => 'tonda',
    'františek' => 'franta'
  }

  def initialize(name)
    @name = name.downcase
  end

  def say_your_name
    puts "My name is #{@name}!"
  end

  def name
    @name.capitalize
  end

  # Pouziti: j.name= 'Neco noveho'
  def name=(new_name)
    @name = new_name.downcase
  end
  
  # jakub -> kuba
  # petr  -> peťa
  # ladislav -> laďa
  # antonín -> tonda
  # františek -> franta
  def nickname
    if DICTIONARY[@name]
      DICTIONARY[@name].capitalize
    else
      @name.capitalize
    end
  end
end



j = User.new 'JAKUB'
puts j.nickname


j = User.new 'AntoNín'
puts j.nickname

j = User.new 'Milan'
puts j.nickname




# Plan
#User.find('jakub').add_ssh_key('sldjflkdsfkdsfjl')
#~/.ssh/autheticated_keys
