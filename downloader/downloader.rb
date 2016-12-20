require 'rubygems'
require 'mechanize'
require 'fileutils'


class Downloader
  def initialize(base_url)
    @base_url = base_url
    @name = '7zip'
    @locale = 'en'
    @arch = 'x64'
    @extension = 'msi'
  end

  def package_url
    crawler = Mechanize.new
    page = crawler.get(@base_url)

    uri = page.links.find do |url|
      url.href =~ /(.+-x64\.exe)/
    end

    [ @base_url, uri.href.sub(/exe$/, @extension) ].join '/'
  end

  def dirname
    folder = [ 'sw_', @name ].join
    [ folder, version ].join('/')
  end

  def path
    base   = [ @name, version, @locale, @arch ].join('_')
    file   = [ base, '.', @extension ].join
    [ dirname, file ].join('/')
  end

  def download!
    if File.exist?(path)
      puts 'Package already exists.'
    else
      FileUtils.mkdir_p(dirname)
      system "wget #{package_url} -O #{path}"
    end
  end

  def version
    package_url =~ /7z(\d{4})/
    $1
  end
end


