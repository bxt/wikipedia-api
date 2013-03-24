# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wikipedia/version'

Gem::Specification.new do |spec|
    spec.name = 'wikipedia-api'
    spec.version = MediaWiki::VERSION
    spec.date = '2013-03-18'
    spec.authors = ['Bernhard Haeussner', 'Ben Hughes']
    spec.email = 'bxt@die-optimisten.net'
    spec.summary = 'Wikipedia-API is a ruby wrapper for the MediaWiki API'
    spec.homepage = 'http://github.com/bxt/wikipedia-api/'
    spec.has_rdoc = true
    spec.files = ['README.md', 'README.rdoc', 'LICENSE', 'lib/mediawiki.rb', 'lib/wikipedia.rb',
      'lib/wikipedia/version.rb', 'test/sample.json', 'test/test.rb']
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.require_paths = ["lib"]
    spec.required_ruby_version = '>= 1.9.3' # json
    spec.add_development_dependency "rake"
    spec.add_development_dependency "shoulda"
end
