# encoding: utf-8
$:.push File.expand_path '../lib', __FILE__
require 'mage/version'

Gem::Specification.new do |spec|
  spec.name           = 'mage'
  spec.summary        = 'mage is a little gem for getting your system details.'
  spec.description    = %q{
    mage is a little gem for getting your system details.
    Things like Operating System, CPU type and CPU hertz, RAM size, and more!
    You only pull in what you want, and no more.
  }
  spec.authors        = ['Kurtis Rainbolt-Greene']
  spec.email          = ['kurtisrainboltgreene@gmail.com']
  spec.homepage       = 'http://krainboltgreene.github.com/mage/'

  spec.files          = `git ls-files`.split('\n')
  spec.test_files     = `git ls-files -- {test,spec,features}/*`.split('\n')
  spec.executables    = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  spec.require_paths  = ['lib']

  spec.version        = Mage::VERSION

  spec.add_development_dependency 'minitest', '2.6.1'
  spec.add_development_dependency 'yard', '0.7.2'
  spec.add_development_dependency 'kramdown', '0.13.3'
  spec.add_dependency 'require_relative', '1.0.2' if RUBY_VERSION =~ /1\.8/
  spec.add_dependency 'rake', '0.9.2'
end


