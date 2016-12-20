#!/usr/bin/env ruby
# coding: utf-8
require_relative 'user'


user = User.all[ARGV.first]
puts user.home_dir





# Plan
#User.find('jakub').add_ssh_key('sldjflkdsfkdsfjl')
#~/.ssh/autheticated_keys
