require 'minitest/autorun'
require 'yaml2rss'

describe YAML2RSS::Input do
  describe 'config' do
    it 'has the correct values' do
    config = YAML2RSS::Input
      .new('spec/fake_feed.yaml')
      .config

    config.author.must_equal 'Billie Jean King'
    config.about.must_equal 'tennis stuff I guess'
    config.title.must_equal 'I don\'t really understand this reference'
    config.elements.count.must_equal 2
    first, last = config.elements
    first.url.must_equal 'http://something.com'
    first.title.must_equal 'some stuff'
    last.url.must_equal 'http://number2.com'
    last.title.must_equal 'some more stuff'
    end
  end
end
