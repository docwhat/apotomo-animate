require 'apotomo/javascript_generator'

module Apotomo
  class JavascriptGenerator
    module Prototype
      def animate(id, markup)
        replace(id, markup)
      end
      def animate_id(id, markup)
        replace_id(id, markup)
      end
    end
    module Right
      def animate(id, markup)
        replace(id, markup)
      end
      def animate_id(id, markup)
        replace_id(id, markup)
      end
    end
    module Jquery
      def animate(id, markup)
        wrapped_markup = "<div id=\"wrapper-#{id}\" style=\"opacity: 0\">#{markup}</div>"

        "#{element(id)}.replaceWith('#{escape(wrapped_markup)}');" +
        "#{element("wrapper-#{id}")}.animate({ 'opacity': 1}, 400);"
      end
      def animate_id(id, markup)
        animate("##{id}", markup)
      end
    end
  end
end
