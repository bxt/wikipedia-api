require 'bundler/gem_tasks'
require 'rdoc/task'
require 'rake/testtask'

Rake::RDocTask.new do |rd|
  rd.main = "README.rdoc"
  rd.title = "wikipedia-api gem"
  rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
  rd.rdoc_dir = "rdoc"
end

Rake::TestTask.new do |t|
  #t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

desc "Open an irb session preloaded with wikipedia library"
task :console do
  sh "irb -rubygems -I lib -r ./lib/wikipedia.rb"
end

task default: :test
