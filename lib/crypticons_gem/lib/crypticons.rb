require "crypticons/version"
require "crypticons/crypticon"
require "json"

module Crypticons
  file_data = File.read(File.join(File.dirname(__FILE__), "data.json"))
  CRYPTICON_SYMBOLS = JSON.parse(file_data).freeze
end
