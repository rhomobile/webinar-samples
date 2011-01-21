module SenchaTouch
  module SassExtensions
    module Functions
      module ThemeImages
        def theme_image(theme, path, mime_type = nil)
          path = path.value
          images_path = File.join(File.dirname(__FILE__), "..", "images", theme.value)
          real_path = File.join(images_path, path)
          url = "url('data:#{compute_mime_type(path,mime_type)};base64,#{data(real_path)}')"
          Sass::Script::String.new(url)
        end
      end
    end
  end
end

module Sass::Script::Functions
  include SenchaTouch::SassExtensions::Functions::ThemeImages
end