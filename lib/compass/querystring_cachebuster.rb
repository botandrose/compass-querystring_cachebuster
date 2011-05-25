module Compass::SassExtensions::Functions::Sprites
  def sprite_url(map)
    verify_map(map, "sprite-url")
    map.generate
    image_url(Sass::Script::String.new("#{map.path}.png"),
              Sass::Script::Bool.new(false),
              Sass::Script::Bool.new(true))
  end
end

module Compass
  module SassExtensions
    module Sprites
      class Base < Sass::Script::Literal
        def filename
          File.join(Compass.configuration.images_path, "#{path}.png")
        end
      end
    end
  end
end
