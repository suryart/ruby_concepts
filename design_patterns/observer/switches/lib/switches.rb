$:.unshift File.dirname(__FILE__)
require 'switches/observer'
require 'switches/switch_box'
require 'switches/switch'
require 'switches/appliance'
require 'switches/start'

Switches::Start.run(ARGF) unless File.directory?(ARGV[0])
