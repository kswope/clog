require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    summary = "Little rails debugging gem for writing colorized output to log file"
    gem.name = "clog"
    gem.summary = summary
    gem.description = summary
    gem.email = "gems-kevdev@snkmail.com"
    gem.homepage = "http://github.com/kswope/clog"
    gem.authors = ["Kevin Swope"]
    gem.add_dependency('term-ansicolor')    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

desc "build README.html from README.doc (for previewing in browser)"
task :readme do
  system "rdoc README.rdoc --one-file > README.html"
end

task :default => :test
task :test => [:test_default, :test_rails2x, :test_rails3x]

require 'rake/testtask'
Rake::TestTask.new(:test_default) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/test_clog.rb'
  test.verbose = true
end

task :test_rails2x do |t|
  chdir "test/rails2x_root" do
    system "rake"
  end
end

task :test_rails3x do |t|
  chdir "test/rails3x_root" do
    system "rake"
  end
end

