require_relative 'downloader'

d = Downloader.new('http://www.7-zip.org')
d.download!
