require 'rubygems'
require 'bundler'
require 'bundler/gem_tasks'
Bundler::GemHelper.install_tasks

# Make sure the Bundler gem is installed by trying to use the setup method.
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# Pull in the rake testing task and test libs.
require 'rake'
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

# Pull in the YARD documentation gem with taks.
require 'yard'
YARD::Rake::YardocTask.new do |t|
  t.files = FileList['lib/**/*.rb']
end

task :default => :test
