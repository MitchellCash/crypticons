# Crypticons gem

[![Gem version](https://img.shields.io/gem/v/crypticons.svg)](https://rubygems.org/gems/crypticons)
[![Build Status](https://travis-ci.org/mitchellcash/crypticons.svg?branch=master)](https://travis-ci.org/mitchellcash/crypticons)

> Crypticons gem to distribute crypticons svg

## Install

Add this to your `Gemfile`

```rb
gem 'crypticons'
```

Then `bundle install`.

## Usage

```rb
require 'crypticons'
icon = Crypticons::Crypticon.new("bitcoin")
icon.to_svg
# <svg class="crypticon crypticon-bitcoin" viewBox="0 0 16 16" width="16" height="16" version="1.1"  aria-hidden="true"><path d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52z"></path><path d="M10.512 7.25c.118-.785-.48-1.208-1.299-1.49l.266-1.065-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.077c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"></path></svg>
```

## Documentation

The `Crypticon` class takes two arguments. The first is the symbol of the icon, and the second is a hash of arguments representing html attributes

#### `symbol` _(required)_

This is the name of the crypticon you want to use. For example `bitcoin`.

#### Options

* `:height` - When setting the height to a number, the icon will scale to that size. For example, passing `32`, will calculate the width based on the icon's natural size.
* `:width` - When setting the width to a number, the icon will scale to that size. For example, passing `32`, will calculate the width based on the icon's natural size.

If both `:width, :height` are passed into the options hash, then the icon will be sized exactly at those dimensions.

#### Attributes

Once initialized, you can read a few properties from the icon.

##### `symbol`

Returns the string of the symbol name

```rb
icon = Crypticons::Crypticon.new("bitcoin")
icon.symbol
# "bitcoin"
```

##### `path`

Path returns the string representation of the path of the icon.

```rb
icon = Crypticons::Crypticon.new("bitcoin")
icon.path
# <path d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52z"/><path d="M10.512 7.25c.118-.785-.48-1.208-1.299-1.49l.266-1.065-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.077c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/>
```

##### `options`

This is a hash of all the `options` that will be added to the output tag.

```rb
icon = Crypticons::Crypticon.new("bitcoin")
icon.options
# {:class=>"crypticon crypticon-bitcoin", :viewBox=>"0 0 16 16", :version=>"1.1", :width=>16, :height=>16, :"aria-hidden"=>"true"}
```

##### `width`

Width is the icon's true width. Based on the svg view box width. _Note, this doesn't change if you scale it up with size options, it only is the natural width of the icon_

##### `height`

Height is the icon's true height. Based on the svg view box height. _Note, this doesn't change if you scale it up with size options, it only is the natural height of the icon_

##### `keywords`

Returns an array of keywords for the icon. The data comes from the [data file in lib](../data.json). Consider contributing more aliases for the icons.

```rb
icon = Crypticons::Crypticon.new("bitcoin")
icon.keywords
# ["bitcoin"]
```

#### Methods

##### `to_svg`

Returns a string of the svg tag

```rb
icon = Crypticons::Crypticon.new("bitcoin")
icon.to_svg
# <svg class="crypticon crypticon-bitcoin" viewBox="0 0 16 16" width="16" height="16" version="1.1"  aria-hidden="true"><path d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52z"></path><path d="M10.512 7.25c.118-.785-.48-1.208-1.299-1.49l.266-1.065-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.077c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"></path></svg>
```

## License

(c) Mitchell Cash

[MIT](./LICENSE)  

[crypticons]: https://github.com/mitchellcash/crypticons
