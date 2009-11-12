libdir = File.dirname(__FILE__)

$LOAD_PATH.unshift(libdir) unless
  $LOAD_PATH.include?(libdir) || $LOAD_PATH.include?(File.expand_path(libdir))

module Rudil
  VERSION = '1.0.0'
end

require 'rudil/die'
require 'rudil/throw'
