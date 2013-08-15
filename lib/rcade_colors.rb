require 'gosu'
require 'color'

module Rcade
  class Color < Gosu::Color

    # hex argument should be a string and can be the full 6 digit hex 
    # or 3 digit shorthand and may include a # prefix.
    # Examples:
    #   "fed"
    #   "#fed"
    #   "cabbed"
    #   "#cabbed"
    def self.from_hex(hex)
      color = ::Color::RGB.from_html(hex).to_hsl
      self.from_hsv(color.hue.to_i, color.s, color.l) # 255, 1.0, 1.0
    end

    def self.named(color_name)
      color = ::Color::CSS[color_name]
      raise 'Invalid color name' unless color
      self.from_hex(color.html)
    end

    # opacity should be a float 0.0..1.0
    def opacity(opacity)
      a = alpha * opacity
      self.from_ahsv(a, hue, saturation, value)
    end

  end
end
