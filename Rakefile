require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/rudil'

Hoe.plugin :newgem

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'rudil' do
  self.developer 'Marc-Antonio Bisotti', 'mail@marc-antonio.de'
  self.urls = ["http://github.com/logicabrity/rudil"]
  self.summary = 'rudil is a dice library for the Ruby programming language.'
  self.description = "Throw dice with any number of sides any number of times. Helps you to interpret the results." 
  self.readme_file = 'README.markdown'
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }
