require_relative "./helper"

describe Crypticons do
  it "loads all icons on initialization" do
    bitcoin_icon = Crypticons::CRYPTICON_SYMBOLS["bitcoin"]
    refute_equal 0, Crypticons::CRYPTICON_SYMBOLS.length
    assert bitcoin_icon["keywords"]
    assert bitcoin_icon["path"]
    assert bitcoin_icon["height"]
    assert bitcoin_icon["width"]
  end
end
