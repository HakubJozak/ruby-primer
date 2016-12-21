require 'rubygems'
require 'mechanize'
require 'fileutils'
require_relative 'link_tools'


class Downloader
  include LinkTools

  def initialize(base_url)
    @base_url = base_url
    @name = '7zip'
    @locale = 'en'
    @arch = 'x64'
    @extension = 'msi'
  end

  def package_url
    uri = find_link_with /(.+-x64\.exe)/
    [ @base_url, uri.href.sub(/exe$/, @extension) ].join '/'
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
      system "wget #{package_url} -O #{path}"
    end
  end

  def version
    package_url =~ /7z(\d{4})/
    $1
  end

  private

  def dirname
    folder = [ 'sw_', @name ].join
    [ folder, version ].join('/')
  end

end
