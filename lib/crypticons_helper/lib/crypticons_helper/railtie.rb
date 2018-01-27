require "rails"

module CrypticonsHelper
  class Railtie < Rails::Railtie
    initializer "crypticons_helper.helper" do
      ActionView::Base.send :include, CrypticonsHelper
    end
  end
end
