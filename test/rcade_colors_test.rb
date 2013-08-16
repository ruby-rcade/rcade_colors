require "minitest/spec"
require "minitest/autorun"
require 'rcade_colors'

describe Rcade::Color do

  describe '.from_hex' do
    it 'can create black from hex' do
      c = Rcade::Color.from_hex('000000')
      [c.red, c.green, c.blue, c.alpha].must_equal [0,0,0,255]
      c = Rcade::Color.from_hex('000')
      [c.red, c.green, c.blue, c.alpha].must_equal [0,0,0,255]
      c = Rcade::Color.from_hex('#000000')
      [c.red, c.green, c.blue, c.alpha].must_equal [0,0,0,255]
      c = Rcade::Color.from_hex('#000')
      [c.red, c.green, c.blue, c.alpha].must_equal [0,0,0,255]
    end

    it 'can create white from hex' do
      c = Rcade::Color.from_hex('ffffff')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,255,255,255]
      c = Rcade::Color.from_hex('fff')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,255,255,255]
      c = Rcade::Color.from_hex('#ffffff')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,255,255,255]
      c = Rcade::Color.from_hex('#fff')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,255,255,255]
      c = Rcade::Color.from_hex('fFf') # case shouldnt matter
      [c.red, c.green, c.blue, c.alpha].must_equal [255,255,255,255]
    end

    it 'can create red from hex' do
      c = Rcade::Color.from_hex('ff0000')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,0,0,255]
      c = Rcade::Color.from_hex('f00')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,0,0,255]
      c = Rcade::Color.from_hex('#ff0000')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,0,0,255]
      c = Rcade::Color.from_hex('#f00')
      [c.red, c.green, c.blue, c.alpha].must_equal [255,0,0,255]
    end
  end

  describe '#opacity' do
    it 'can modify opacity' do
      c = Rcade::Color.from_hex('#f00').opacity(0)
      [c.red, c.green, c.blue, c.alpha].must_equal [255,0,0,0]

      color = Rcade::Color.from_hex('#f00').opacity(1)
      color.alpha.must_equal(255)

      color = Rcade::Color.from_hex('#f00').opacity(0.5)
      color.alpha.must_equal(127)
    end

    it 'can modify the opacity of a color that has already been modified' do
      color = Rcade::Color.from_hex('#f00').opacity(0.5)
      color.alpha.must_equal(127)
      color = color.opacity(1.0)
      color.alpha.must_equal(255)
    end
  end
end