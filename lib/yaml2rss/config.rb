module YAML2RSS
  class Config
    attr_reader :author,
                :about,
                :title,
                :elements
    def initialize(author, about, title, raw_elements)
      @author = author
      @about = about
      @title = title
      @elements = raw_elements.map do |params|
        Element.new(params['url'], params['title'])
      end
    end
  end

  class Element
    attr_reader :url,
                :title
    def initialize(url, title)
      @url = url
      @title = title
    end
  end
end