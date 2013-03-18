# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wikipedia/version'

Gem::Specification.new do |s|
    s.name = 'wikipedia-api'
    s.version = MediaWiki::VERSION
    s.date = '2013-03-18'
    s.authors = ['Bernhard Haeussner', 'Ben Hughes']
    s.email = 'bxt@die-optimisten.net'
    s.summary = 'Wikipedia-API is a ruby wrapper for the MediaWiki API'
    s.homepage = 'http://github.com/bxt/wikipedia-api/'
    s.has_rdoc = true
    s.files = ['README.md', 'README.rdoc', 'LICENSE', 'lib/mediawiki.rb', 'lib/wikipedia.rb',
      'lib/wikipedia/version.rb', 'test/sample.json', 'test/test.rb']
    s.test_files    = s.files.grep(%r{^(test|spec|features)/})
    s.require_paths = ["lib"]
    s.required_ruby_version = '>= 1.9.3' # json
    s.add_development_dependency "rake"
    s.add_development_dependency "shoulda"
end
