require 'yaml'

module YAML2RSS
  class Input
    def initialize(filename)
      @file = YAML.safe_load(
        File.open(filename, 'r')
      )
    end

    def config
      Config.new(
        file['author'],
        file['about'],
        file['title'],
        file['elements']
      )
    end

    private

    attr_reader :file
  end
end
