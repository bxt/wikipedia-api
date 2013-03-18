# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wikipedia/version'

Gem::Specification.new do |s|
    s.name = 'wikipedia-api'
    s.version = MediaWiki::VERSION
    s.date = '2008-05-06'
    s.authors = ['Ben Hughes']
    s.email = 'ben@pixelmachine.org'
    s.summary = 'Wikipedia-API is a ruby wrapper for the MediaWiki API'
    s.homepage = 'http://github.com/schleyfox/wikipedia-api/'
    s.has_rdoc = true
    s.files = ['README', 'LICENSE', 'lib/mediawiki.rb', 'lib/wikipedia.rb',
      'test/sample.xml', 'test/test.rb']
end
