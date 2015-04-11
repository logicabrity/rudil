require 'rake'

Gem::Specification.new do |s|
    s.name        = 'rudil'
    s.version     = '1.0.2'
    s.date        = '2015-04-11'
    s.summary     = "rudil is a dice library for the ruby programming language"
    s.description = "Throw dice with any number of sides any number of times. Helps you interpreting the results."
    s.authors     = ["Marc-Antonio Bisotti"]
    s.email       = 'mail@marc-antonio.de'
    s.files       = FileList['lib/rudil.rb', 'lib/rudil/*.rb', 'spec/*.rb'].to_a
    s.homepage    = 'http://rubygems.org/gems/rudil'
    s.license     = 'MIT'
end
