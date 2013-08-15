require 'gosu'

class Gosu::Color
  # Provides the ability to adjust the opacity (alpha).
  # The opacity argument should be a float 0.0..1.0
  def opacity(opacity)
    a = alpha * opacity
    hex_string = "0x%02x%02x%02x%02x" % [(alpha * opacity), red, green, blue]
    self.class.argb(hex_string.to_i(16))
  end
end

module Rcade
  class Color < Gosu::Color

    # hex argument should be a string and can be the full 6 digit hex 
    # or 3 digit shorthand and may include a # prefix.
    # Examples:
    #   "fed"
    #   "#fed"
    #   "cabbed"
    #   "#cabbed"
    def self.from_hex(string)
      h = string.scan(/\h/)
      if h.size == 3
        h.map! {|v| (v * 2) } # expand to 6 character format
      end
      hex_string = "0xff" + h.join # fully opaque
      self.argb(hex_string.to_i(16))
    end

    def self.named(color_name)
      require 'color/css'
      color = ::Color::CSS[color_name]
      raise 'Invalid color name' unless color
      self.from_hex(color.html)
    end

  end
end