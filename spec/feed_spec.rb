require 'minitest/autorun'
require 'yaml2rss'

describe YAML2RSS::Feed do
  it 'constructs a feed' do
    config = YAML2RSS::Input
      .new('spec/fake_feed.yaml')
      .config

    feed = YAML2RSS::Feed.new(config)
  end
end
