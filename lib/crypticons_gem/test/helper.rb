require "minitest/autorun"
require "crypticons"

def crypticon(symbol, options = {})
  ::Crypticons::Crypticon.new(symbol, options)
end
