# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mage/version"


Gem::Specification.new do |spec|
  spec.name        = "mage"
  spec.version     = Mage::VERSION
  spec.authors     = ["Kurtis Rainbolt-Greene"]
  spec.email       = ["kurtisrainboltgreene@gmail.com"]
  spec.homepage    = "http://github.com/krainboltgreene/mage"
  spec.summary     = %q{ mage is a great little gem for getting your system profile.}
  spec.description = %q{
    mage is a great little gem for getting your system profile.
    Things like Operating System, CPU type and herts, RAM size, and more!
    You only pull in what you want, and no more.
  }
  spec.add_dependency('ox', '>= 1.2.5')

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
