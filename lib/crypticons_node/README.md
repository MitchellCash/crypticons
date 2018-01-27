# Crypticons

[![npm version](https://img.shields.io/npm/v/crypticons.svg)](https://www.npmjs.org/package/crypticons)
[![Build Status](https://travis-ci.org/mitchellcash/crypticons.svg?branch=master)](https://travis-ci.org/mitchellcash/crypticons)

> Crypticons are a scalable set of cryptocurrency icons.

## Install

**NOTE:** The compiled files are located in `build/`. This directory is located in the published npm package. Which means you can access it when you `npm install crypticons`. The files in the `lib/` directory are the raw source files and are not compiled or optimized.

#### npm

This repository is distributed with [npm][npm]. After [installing npm][install-npm], you can install `crypticons` with this command.

```
$ npm install crypticons --save
```

## Usage

For all the usages, we recommend using the CSS located in `build/build.css`. This is some simple CSS to normalize the icons and inherit colors.

### Node

After installing `npm install crypticons` you can access the icons like this.

```js
var crypticons = require("crypticons")
crypticons.bitcoin
// { keywords: [ 'bitcoin' ],
//   path: '<path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/>',
//   height: '16',
//   width: '16',
//   symbol: 'bitcoin',
//   options:
//    { version: '1.1',
//      width: '16',
//      height: '16',
//      viewBox: '0 0 16 16',
//      class: 'crypticon crypticon-bitcoin',
//      'aria-hidden': 'true' },
//   toSVG: [Function] }
```

There will be a key for every icon, with [`toSVG`](#crypticonsbitcointosvg) and other properties.

#### `crypticons.bitcoin.symbol`

Returns the string of the symbol name, same as the key for that icon.

```js
crypticons.bitcoin.symbol
// "bitcoin"
```

#### `crypticons.bitcoin.path`

Returns the string representation of the path of the icon.

```js
crypticons.bitcoin.path
// <path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/>
```

#### `crypticons.bitcoin.options`

This is an object of all the attributes that will be added to the output tag.

```js
crypticons.bitcoin.options
// { version: '1.1', width: '16', height: '16', viewBox: '0 0 16 16', class: 'crypticon crypticon-bitcoin', 'aria-hidden': 'true' }
```

#### `crypticons.bitcoin.width`

Returns the icon's true width, based on the svg view box width. _Note, this doesn't change if you scale it up with size options, it only is the natural width of the icon._

#### `crypticons.bitcoin.height`

Returns the icon's true height, based on the svg view box height. _Note, this doesn't change if you scale it up with size options, it only is the natural height of the icon._

#### `keywords`

Returns an array of keywords for the icon. The data comes from the [data file in lib](../data.json). Consider contributing more aliases for the icons.

```js
crypticons.bitcoin.keywords
// ["bitcoin"]
```

#### `crypticons.bitcoin.toSVG()`

Returns a string of the `<svg>` tag.

```js
crypticons.bitcoin.toSVG()
// <svg version="1.1" width="16" height="16" viewBox="0 0 16 16" class="crypticon crypticon-bitcoin" aria-hidden="true"><path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/></svg>
```

The `.toSVG()` method accepts an optional `options` object. This is used to add CSS classnames, a11y options, and sizing.

##### class

Add more CSS classes to the `<svg>` tag.

```js
crypticons.bitcoin.toSVG({ "class": "crypto" })
// <svg version="1.1" width="16" height="16" viewBox="0 0 16 16" class="crypticon crypticon-bitcoin crypto" aria-hidden="true"><path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/></svg>
```

##### aria-label

Add accessibility `aria-label` to the icon.

```js
crypticons.bitcoin.toSVG({ "aria-label": "Bitcoin cryptocurrency" })
// <svg version="1.1" width="16" height="16" viewBox="0 0 16 16" class="crypticon crypticon-bitcoin" aria-label="Bitcoin cryptocurrency" role="img"><path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/></svg>
```

##### width & height

Size the SVG icon larger using `width` & `height` independently or together.

```js
crypticons.bitcoin.toSVG({ "width": 45 })
// <svg version="1.1" width="45" height="45" viewBox="0 0 16 16" class="crypticon crypticon-bitcoin" aria-hidden="true"><path fill="#F7931A" fill-rule="nonzero" d="M13.638 9.521A5.906 5.906 0 1 1 2.177 6.664 5.906 5.906 0 0 1 13.638 9.52zm-3.126-2.27c.118-.786-.48-1.209-1.299-1.49l.266-1.066-.649-.161-.258 1.036c-.17-.042-.345-.082-.52-.122l.261-1.043-.648-.162L7.4 5.308c-.142-.033-.28-.064-.414-.098v-.003l-.894-.223-.172.692s.48.11.47.117c.263.066.31.24.303.377L6.39 7.383a.537.537 0 0 1 .068.022l-.069-.017-.424 1.7c-.032.079-.113.199-.297.153.007.01-.47-.117-.47-.117l-.323.742.844.21.462.12-.268 1.076.647.162.266-1.066c.177.048.348.092.516.134l-.264 1.06.648.162.268-1.075c1.105.21 1.937.125 2.286-.875.282-.805-.014-1.269-.595-1.572.423-.097.742-.376.827-.951zm-1.48 2.076c-.2.805-1.556.37-1.995.261l.355-1.427c.44.11 1.849.327 1.64 1.166zm.2-2.088c-.183.732-1.31.36-1.677.269l.323-1.294c.366.091 1.544.261 1.354 1.025z"/></svg>
```

## License

(c) Mitchell Cash

[MIT](./LICENSE)  

[npm]: https://www.npmjs.com/
[install-npm]: https://docs.npmjs.com/getting-started/installing-node
