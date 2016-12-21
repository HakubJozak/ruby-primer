require 'minitest/autorun'
require_relative 'downloader'

class DownloaderTest < MiniTest::Unit::TestCase

  def setup
    @downloader = Downloader.new('http://www.7-zip.org')
  end

  def test_package_url
    assert_match %r{http://www.7-zip.org/a/.*.msi}, @downloader.package_url
  end

  def test_path
    assert_match %r{sw_7zip/\d{4}/7zip_\d{4}_en_x64.msi}, @downloader.path
  end

  def test_version
    assert_match %r{\d{4}}, @downloader.version
  end

end
