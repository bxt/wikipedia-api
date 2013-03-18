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

task 'test/sample.json' do
  sh "wget -qO test/sample.json 'http://en.wikipedia.org/w/api.php?action=que"\
     "ry&format=json&prop=info%7Crevisions%7Clinks%7Clanglinks%7Cimages%7Cima"\
     "geinfo%7Ctemplates%7Ccategories%7Cextlinks%7Ccategoryinfo&titles=Foobar"\
     "&rvprop=ids%7Cflags%7Ctimestamp%7Cuser%7Csize%7Ccomment%7Ccontent'"
end

task default: :test
