# -*- encoding: utf-8 -*-
require File.expand_path('../lib/apotomo-animate/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christian Höltje", "Jean Lange", "Peter Pawlowski"]
  gem.email         = ["docwhat@gerf.org"]
  gem.description   = %q{Make your AJAX powered apotomo widgets have more sizzle; animate them as the appear!}
  gem.summary       = %q{Adds an animated replace() method.}
  gem.homepage      = "http://github.com/docwhat/apotomo-animate"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "apotomo-animate"
  gem.require_paths = ["lib"]
  gem.version       = Apotomo::Animate::VERSION

  gem.add_runtime_dependency('apotomo', ['>= 1.1.4'])

  gem.add_development_dependency('rspec-apotomo')
end
