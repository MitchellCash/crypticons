require "crypticons"
require "action_view"

module CrypticonsHelper

  include ActionView::Helpers::TagHelper

  def crypticon(symbol, options = {})
    return "" if symbol.nil?

    icon = Crypticons::Crypticon.new(symbol, options)
    content_tag(:svg, icon.path.html_safe, icon.options) # rubocop:disable Rails/OutputSafety
  end
end
