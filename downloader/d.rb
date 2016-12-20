require 'rubygems'
require 'mechanize'






class Downloader
  def initialize(base_url)
    @base_url = base_url
  end

  def package_url
    crawler = Mechanize.new
    page = crawler.get(@base_url)

    uri = page.links.find do |url|
      url.href =~ /(.+-x64\.exe)/
    end

    [ @base_url, uri.href ].join '/'
  end

end
  



puts Downloader.new('http://www.7-zip.org').package_url

