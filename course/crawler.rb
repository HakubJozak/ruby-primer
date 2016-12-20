require 'rubygems'
require 'mechanize'

crawler = Mechanize.new

crawler.get('http://www.eset.cz/') do |page|
  puts page.uri
  contacts = page.links.find do |link|
    link.text =~ /kontakty?/i
  end.click


  puts contacts.uri

  
  # najdi vsechny  linky, ktere zacinaji
  # mailto:...
end


