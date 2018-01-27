require_relative "./helper"

describe CrypticonsHelper do
  describe "rendering" do
    it "renders nothing when no symbol is passed in" do
      assert_equal "", crypticon(nil)
    end

    it "renders the svg" do
      assert_match /<svg.*crypticon-bitcoin.*><path.*\/><\/svg>/, crypticon("bitcoin")
    end

    it "has a path" do
      assert_match /<path/, crypticon("bitcoin")
    end

    it "adds html attributes to output" do
      assert_match /foo="bar"/, crypticon("bitcoin", foo: "bar")
    end
  end
end
