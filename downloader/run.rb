#!/usr/bin/env ruby

require_relative 'downloader'

begin
  d = Downloader.new(ARGV.first)
  d.download!
rescue Downloader::Error
  puts $!.message
end
