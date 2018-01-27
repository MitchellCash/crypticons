require_relative "./helper"

describe Jekyll::Crypticons do
  describe "parsing" do
    it "parses the tag options" do
      output = render("{% crypticon bitcoin height:32 class:\"left right\" aria-label:hi %}")
      assert_match /height="32"/, output
      assert_match /class="[^"]+ left right/, output
      assert_match /aria-label="hi"/, output
    end

    it "parses interpoaltion of variables" do
      template = render("{% assign symbol = \"bitcoin\" %}{% crypticon {{ symbol }} %}")
      assert_match /<svg.*crypticon-bitcoin.*/, template
    end
  end

  describe "rendering" do
    it "renders the svg" do
      output = render("{% crypticon bitcoin height:32 %}")
      assert_match /<svg.*crypticon-bitcoin.*/, output
      assert_match /<svg.*width="32".*/, output
    end

    it "renders nothing without a symbol" do
      assert_equal "", render("{% crypticon %}")
    end
  end
end
