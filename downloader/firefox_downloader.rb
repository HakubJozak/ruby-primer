class FirefoxDownloader < Downloader
  def initialize
    super 'http://download.mozilla.org'
    @name = 'firefox'
    @locale = 'cs'
    @arch = 'x64'
    @extension = 'exe'    
  end

  def package_url
    "http://download.mozilla.org/?product=firefox-#{version}&os=win&lang=cs"
  end

  def version
    regexp = /firefox-(\d{2}\.\d\.\d)/
    link = find_link_with(regexp)
    link.href =~ regexp
    $1.strip
  end

end
