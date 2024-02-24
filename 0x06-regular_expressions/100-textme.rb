#!/usr/bin/env ruby
m = ARGV[0].match(/
.*\[from:(?<sender>\+?\w+?)\] # Find sender, could be a name or a number
.*\[to:(?<reciever>\+?\w+?)\] # Find receiver, could be a name or a number
.*\[flags:(?<flags>.*?)\] # Find flags and match anything in it
/x)
puts m[:sender] + "," + m[:reciever] + "," + m[:flags]
