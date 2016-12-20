# coding: utf-8
class User
  attr_reader :uid, :gid, :home_dir

  DICTIONARY = {
    'jakub' => 'kuba',
    'petr'  => 'peťa',
    'ladislav' => 'laďa',
    'antonín' => 'tonda',
    'františek' => 'franta'
  }

  def self.all
    # klice jsou jmena uzivatelu
    result = {}

    File.new('/etc/passwd').read.lines.each do |line|
      vals = line.split(':')

      one_line_hash = {
        name: vals[0],
        uid: vals[2].to_i,
        gid: vals[3].to_i,
        home: vals[5],
      }

      name = one_line_hash[:name]
      new_user = User.new(one_line_hash)

      result[name] = new_user
    end

    result
  end



  def initialize(hash)
    @name = hash[:name]
    @home_dir = hash[:home]
    @uid = hash[:uid]
    @gid = hash[:gid]    
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
