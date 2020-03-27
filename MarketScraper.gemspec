require_relative 'lib/MarketScraper/version'

Gem::Specification.new do |spec|
  spec.name          = "MarketScraper"
  spec.version       = MarketScraper::VERSION
  spec.authors       = ["JoeDeGr"]
  spec.email         = ["DeGregorio.Joseph@gmail.com"]

  spec.summary       = %q{"A gem that tetrieves market data on a given stock and adds it to a portfolio".}
  spec.description   = %q{"The Gem Retrieves data from Yahoo Finance on a given stock symbol and adds the given number of shares adds the value to a portfolio of stocks."}
  spec.homepage      = "https://github.com/JoeDeGr/Market-Scraper"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] ="https://github.com/JoeDeGr/Market-Scraper"
  spec.metadata["changelog_uri"] = "https://github.com/JoeDeGr/Market-Scraper"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
