require 'rubygems'
require 'mechanize'
require 'fileutils'
require_relative 'link_tools'




class Downloader
  include LinkTools

  class Error < Exception ; end

  def initialize(base_url)
    @base_url = base_url

    if @base_url.nil? || @base_url.empty?
      fail DownloaderError.new('Base URL missing')
    end
  end

  def base_url
    @base_url
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
      system "wget '#{package_url}' -O #{path}"
    end
  end

  private

  def find_link_with(regexp)
    crawler = Mechanize.new
    page = crawler.get(base_url)

    uri = page.links.find do |url|
      url.href =~ regexp
    end    
  end  

  def dirname
    folder = [ 'sw_', @name ].join
    [ folder, version.gsub('.','') ].join('/')
  end
end

require_relative 'seven_zip_downloader'
require_relative 'firefox_downloader'


if $0 == __FILE__
  # SevenZipDownloader.new.download!
  FirefoxDownloader.new.download!
end

