require 'rubygems'
require 'rake'


desc "build README.html from README.doc (for previewing in browser)"
task :readme do
  system "rdoc README.rdoc --one-file > README.html"
end

task :default => :test
task :test => [:test_default, :test_rails]

require 'rake/testtask'
Rake::TestTask.new(:test_default) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/test_clog.rb'
  test.verbose = true
end

task :test_rails do |t|
  chdir "test/rails_root" do
    system "rake"
  end
end

