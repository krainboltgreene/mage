require 'rubygems'
require 'bundler'
require 'yard'
require 'rake/testtask'
require 'bundler/gem_tasks'

# Make sure the Bundler gem is installed by trying to use the setup method.
Bundler::GemHelper.install_tasks
begin
  Bundler.setup :default, :development
rescue Bundler::BundlerError => error
  $stderr.puts error.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit error.status_code
end

desc "Setup `rake test` to run all of the tests in the test directory."
Rake::TestTask.new :test do |config|
  config.libs << "test/helper"
  config.pattern = 'test/**/test_*.rb'
  config.verbose = true
  config.warning = true
end

desc "Setup YARD's documentation task with the files in lib."
YARD::Rake::YardocTask.new :doc do |config|
  config.files = Dir['lib/**/*.rb']
end

task :default => :test
