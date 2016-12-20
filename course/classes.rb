class User
  def initialize(name)
    @name = name.downcase.capitalize
  end

  def say_your_name
    puts "My name is #{@name}!"
  end

  def name
    @name
  end

  # Pouziti: j.name= 'Neco noveho'
  def name=(new_name)
    @name = new_name.downcase.capitalize
  end
  

  # jakub -> kuba
  # petr  -> petricek
  # ladislav -> lada
  # antonin -> tonda
  # frantisek -> franta
  def nickname
  end
end






j = User.new 'JAKUB'
j.say_your_name
j.change_name 'Tonda'
j.name = 'Tonda'

# vypise 'Tonda'
puts j.name
j.say_your_name



# Plan
#User.find('jakub').add_ssh_key('sldjflkdsfkdsfjl')
#~/.ssh/autheticated_keys
