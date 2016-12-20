records = File.new('/etc/passwd').read.lines.map do |line|
  vals = line.split(':')

  {
    name: vals[0],
    uid: vals[2].to_i,
    gid: vals[3].to_i,
    home: vals[5],
  }
end

$users = {}

# records.select! { |h| h[:uid] > 999 }


records.each do |record|
  if h[:uid] > 999
    name = record[:name]
    $users[name] = record
  end
end
