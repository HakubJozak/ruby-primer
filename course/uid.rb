#!/usr/bin/env ruby

require_relative './users.rb'


uid = $users[ARGV.first][:uid]
puts "UID of user John is #{uid}"



