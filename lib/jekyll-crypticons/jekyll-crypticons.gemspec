require File.expand_path("../lib/jekyll-crypticons/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jekyll-crypticons"
  s.version     = Jekyll::Crypticons::VERSION
  s.summary     = "Crypticons jekyll liquid tag"
  s.description = "A jekyll liquid plugin that makes including svg Crypticons simple."
  s.authors     = ["Mitchell Cash"]
  s.email       = ["mitchell@mitchellcash.com"]
  s.files       = Dir["{lib}/**/*"] + ["LICENSE", "README.md"]
  s.homepage    = "https://github.com/mitchellcash/crypticons"
  s.license     = "MIT"

  s.require_paths = ["lib"]

  s.add_dependency "jekyll", "~> 3.1"
  s.add_dependency "crypticons", "1.0.0"
end
