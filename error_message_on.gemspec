# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'error_message_on/version'

Gem::Specification.new do |gem|
  gem.license       = "MIT"
  gem.name          = "error_message_on"
  gem.version       = ErrorMessageOn::VERSION
  gem.authors       = ["Andrey"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Single error message for Rails Form"
  gem.summary       = "Single error message for Rails Form"
  gem.homepage      = "https://github.com/vav/error_message_on"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
