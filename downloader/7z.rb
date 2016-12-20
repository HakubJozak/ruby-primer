require 'rubygems'
require 'mechanize'

<a href="a/7z1604.msi">Download</a>
def kontakt_na_web(uri)
  crawler = Mechanize.new

  crawler.get(uri) do |page|
    contacts = page.links.find do |link|
      link.text =~ /kontakty?/i
    end.click


    # najdi vsechny  linky, ktere zacinaji
    # mailto:...
    email = contacts.links.find do |link|
      link.href =~ /mailto:(.*)/
    end

    return $1
  end
rescue SocketError, Errno::ETIMEDOUT
  puts $!.message
  puts 'Server nedostupny'
ensure
  puts 'ALWAYS'
  file.close rescue nil
  # socket.close
end

puts kontakt_na_web(ARGV.first)
