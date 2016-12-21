require 'minitest/autorun'
require_relative 'downloader'
require_relative 'firefox_downloader'
require_relative 'seven_zip_downloader'

class DownloaderTest < MiniTest::Unit::TestCase

  def setup
    @downloader = SevenZipDownloader.new
  end

  def test_package_url
    assert_match %r{http://www.7-zip.org/a/.*.msi}, @downloader.package_url
  end

  def test_firefox_package_url
    d = FirefoxDownloader.new
    puts d.package_url
    # assert_match %r{http://www.7-zip.org/a/.*.msi}, d.package_url
  end  

  def test_path
    assert_match %r{sw_7zip/\d{4}/7zip_\d{4}_en_x64.msi}, @downloader.path
  end

  def test_version
    assert_match %r{\d{4}}, @downloader.version
  end

end
