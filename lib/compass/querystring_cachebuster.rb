module Compass::SassExtensions
  module Functions::Sprites
    def sprite_url(map)
      verify_map(map, "sprite-url")
      map.generate
      image_url(Sass::Script::String.new("#{map.path}.png"),
                Sass::Script::Bool.new(false),
                Sass::Script::Bool.new(true))
    end
  end

  module Sprites::SpriteMethods
    def filename
      File.join(Compass.configuration.images_path, "#{path}.png")
    end
  end
end
