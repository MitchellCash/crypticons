require File.expand_path("../lib/crypticons_helper/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "crypticons_helper"
  s.version     = CrypticonsHelper::VERSION
  s.summary     = "Crypticons rails helper"
  s.description = "A rails helper that makes including svg Crypticons simple."
  s.authors     = ["Mitchell Cash"]
  s.email       = ["mitchell@mitchellcash.com"]
  s.files       = Dir["{lib}/**/*"] + ["LICENSE", "README.md"]
  s.homepage    = "https://github.com/mitchellcash/crypticons"
  s.license     = "MIT"

  s.require_paths = ["lib"]

  s.add_dependency "crypticons", "1.0.0"
  s.add_dependency "rails"
end
