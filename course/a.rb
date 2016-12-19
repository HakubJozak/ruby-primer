polotovar = File.new('/etc/passwd').read.lines.map do |line|
  vals = line.split(':')

  if vals[2].to_i > 999
  {
    user: vals[0],
    uid: vals[2].to_i,
    gid: vals[3].to_i,
    home: vals[5],    
  }
  end
end

puts polotovar.inspect

users = polotovar.select do |h|
  h[:uid] > 999
end


jakub = users.find do |u|
  u[:name] == 'jakub'
end


puts polotovar.compact.inspect
puts '-----------------------'
puts users.compact.inspect
