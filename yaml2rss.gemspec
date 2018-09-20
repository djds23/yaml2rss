lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml2rss/version'

Gem::Specification.new do |spec|
  spec.name          = 'yaml2rss'
  spec.version       = YAML2RSS::VERSION
  spec.authors       = ['Dean Silfen']
  spec.email         = ['dean.silfen@gmail.com']

  spec.summary       = 'Turn static YAML files into RSS feeds.'
  spec.description   = 'Turn static YAML files into RSS feeds.'
  spec.homepage      = 'https://github.com/djds23/yaml2rss'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.59.1'
  spec.add_development_dependency 'minitest', '~> 5.8.4'
  spec.add_development_dependency 'ruby-debug-ide', '~> 0.6.0'
  spec.add_development_dependency 'debase', '~> 0.2.2'
end
