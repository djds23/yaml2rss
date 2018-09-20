require 'yaml'
require 'rss'

module YAML2RSS
  class Feed
    attr_reader :config
    def initialize(config)
      @config = config
    end

    def to_s
      rss.to_s
    end

    def rss
      RSS::Maker.make('atom') do |maker|
        metadata config, maker
        config.elements.each do |element|
          maker.items.new_item do |item|
            post element, item
          end
        end
      end
    end

    def metadata(config, maker)
      maker.channel.author = config.author
      maker.channel.updated = Time.now.to_s
      maker.channel.about = config.about
      maker.channel.title = config.title
    end

    def post(element, item)
      item.link = element.url
      item.title = element.title
      item.updated = Time.now.to_s
    end
  end
end
