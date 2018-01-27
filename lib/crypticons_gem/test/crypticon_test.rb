require_relative "./helper"

describe Crypticons::Crypticon do
  it "fails when the crypticon doesn't exist" do
    assert_raises(RuntimeError) do
      crypticon("crypticon")
    end
  end

  it "initialize accepts a string for an icon" do
    icon = crypticon("bitcoin")
    assert icon
  end

  it "initialize accepts a symbol for an icon" do
    icon = crypticon(:bitcoin)
    assert icon
  end

  it "gets keywords for the icon" do
    icon = crypticon("bitcoin")
    assert_equal ["bitcoin"], icon.keywords
  end

  it "the attributes are readable" do
    icon = crypticon("bitcoin")
    assert icon.path
    assert icon.options
    assert_equal "bitcoin", icon.symbol
    assert_equal 16, icon.width
    assert_equal 16, icon.height
  end

  describe "viewBox" do
    it "always has a viewBox" do
      icon = crypticon("bitcoin")
      assert_includes icon.to_svg, "viewBox=\"0 0 16 16\""
    end
  end

  describe "html_attributes" do
    it "includes other html attributes" do
      icon = crypticon("bitcoin", foo: "bar", disabled: "true")
      assert_includes icon.to_svg, "disabled=\"true\""
      assert_includes icon.to_svg, "foo=\"bar\""
    end
  end

  describe "classes" do
    it "includes classes passed in" do
      icon = crypticon("bitcoin", class: "text-closed")
      assert_includes icon.to_svg, "class=\"crypticon crypticon-bitcoin text-closed\""
    end
  end

  describe "size" do
    it "always has width and height" do
      icon = crypticon("bitcoin")
      assert_includes icon.to_svg, "height=\"16\""
      assert_includes icon.to_svg, "width=\"16\""
    end

    it "converts number string height to integer" do
      icon = crypticon("bitcoin", height: "60")
      assert_includes icon.to_svg, "height=\"60\""
      assert_includes icon.to_svg, "width=\"60\""
    end

    it "converts number height to integer" do
      icon = crypticon("bitcoin", height: 60)
      assert_includes icon.to_svg, "height=\"60\""
      assert_includes icon.to_svg, "width=\"60\""
    end

    it "converts number string width to integer" do
      icon = crypticon("bitcoin", width: "45")
      assert_includes icon.to_svg, "height=\"45\""
      assert_includes icon.to_svg, "width=\"45\""
    end

    it "converts number width to integer" do
      icon = crypticon("bitcoin", width: 45)
      assert_includes icon.to_svg, "height=\"45\""
      assert_includes icon.to_svg, "width=\"45\""
    end

    it "with height and width passed in" do
      icon = crypticon("bitcoin", width: 60, height: 60)
      assert_includes icon.to_svg, "width=\"60\""
      assert_includes icon.to_svg, "height=\"60\""
    end
  end

  describe "a11y" do
    it "includes attributes" do
      icon = crypticon("bitcoin", :'aria-label' => "Close")
      assert_includes icon.to_svg, "role=\"img\""
      assert_includes icon.to_svg, "aria-label=\"Close\""
    end

    it "has aria-hidden when no label is passed in" do
      icon = crypticon("bitcoin")
      assert_includes icon.to_svg, "aria-hidden=\"true\""
    end
  end
end
