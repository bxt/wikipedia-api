require 'test/unit'
require 'rubygems'
require 'shoulda'
require File.dirname(__FILE__) + '/../lib/mediawiki'

class MediaWiki
  class MediaWikiBase
    def get_json(url)
      JSON(open(File.dirname(__FILE__) + '/sample.json'){|f| f.read})
    end
  end
end

class MediaWikiTest < Test::Unit::TestCase
  def setup
    @mw = MediaWiki.new("http://mock.com/api.php")
  end

  context "MediaWiki interface" do
    should("find article by id"){ assert @mw.find(10) }
    should("find article by title"){ assert @mw.find_by_title("Foobar") }
    should("have langlinks for the page"){ assert @mw.find_by_title("Foobar").langlinks.is_a? Hash }
    should("find articles by ids"){ assert @mw.find_by_pageids(10,11) }
    should("find articles by titles"){ assert @mw.find_by_titles("Foo","Bar") }
  end

  context "MediaWiki base" do
    should("have json"){ assert @mw.find_by_titles("Foobar").json }
    should("have pages"){ assert @mw.find_by_titles("Foobar").pages }
  end

  context "MediaWiki pages" do
  end
end

