lines = File.read('jmena.csv', encoding: 'windows-1250').lines
lines.map { |l| a = l.split(';') ; [ a.first.strip, a.last.strip.to_i ] }
