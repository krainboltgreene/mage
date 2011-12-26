# encoding: utf-8
require File.expand_path('../lib/mage/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kurtis Rainbolt-Greene" "Fernando Ortiz"]
  gem.email         = ["kurtisrainboltgreene@gmail.com" "eratos2000@gmail.com"]
  gem.description   = 'mage is an interface for your hardware & software profile'
  gem.summary       = %q{    mage is a great little gem for getting your system profile.
    Things like Operating System, CPU type and herts, RAM size, and more!
    You only pull in what you want, and no more.}
  gem.homepage      = 'http://krainboltgreene.github.com/mage/'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "mage"
  gem.require_paths = ["lib"]
  gem.version       = Mage::VERSION

  if RUBY_PLATFORM =~ /1\.8/
    gem.add_dependency 'backports', '2.3.0'
  end
  
  gem.add_development_dependency 'require_relative', '1.0.3'
  gem.add_development_dependency 'minitest', '2.6.2'
  gem.add_development_dependency 'yard', '0.7.3'
  gem.add_development_dependency 'kramdown', '0.13.3'
  gem.add_development_dependency 'rake', '0.9.2.2'
  gem.add_dependency 'rack', '1.3.5'
  gem.add_dependency 'facter', '1.6.2'
end

