class SevenZipDownloader < Downloader
  def initialize
    super 'http://www.7-zip.org'
    @name = '7zip'
    @locale = 'en'
    @arch = 'x64'
    @extension = 'msi'
  end

  def package_url
    uri = find_link_with /(.+-x64\.exe)/
    [ @base_url, uri.href.sub(/exe$/, @extension) ].join '/'
  end

  def version
    package_url =~ /7z(\d{4})/
    $1
  end

end
