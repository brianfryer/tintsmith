class Palette < ActiveRecord::Base

  attr_accessor :palette_name, :palette_color

  def initialize( palette_name )
    @palette_name = palette_name
    @palette_color = Color
  end

  class Color
    def initialize( color_name, hex, opacity )
      @color_name = color_name
      @hex = hex
      @opacity = opacity
    end
  end

  class Blend
    def initialize
      @locked = false
      @base_color = Color
      @options = Array.new(
          top_color = Color,
          blending_mode = mode,
          increments = int

      )
    end
    @results = Array.new(
        resulting_color = Color
    )
  end





end
