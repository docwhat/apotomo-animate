require 'apotomo/widget/javascript_methods'

module Apotomo
  module JavascriptMethods
    def animated_replace(*args)
      wrap_in_javascript_for(:animate, *args)
    end
  end
end