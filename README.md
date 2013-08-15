# Rcade Colors

Provides additional CSS Hex value and opacity support for Gosu.

## Installation

Add this line to your application's Gemfile:

    gem 'rcade_colors'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rcade_colors

## Usage

### CSS Hex values

Using this gem, you can create a Gosu::Color object using CSS hex values:

    Rcade::Color.from_css('#ff0')

### CSS color names

If you would like to create a Gosu::Color from a CSS color name, you can!

    Rcade::Color.named('DarkSlateBlue')

See [full list of supported color names](https://github.com/halostatue/color/blob/master/lib/color/rgb-colors.rb).

### Opacity

You can also modify the opacity of a color before using it:

    color = Rcade::Color::RED.opacity(0.5)

And that's it. If you want any other features, submit an issue, or send a pull request.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
