# Crypticons

[![Build Status](https://travis-ci.org/mitchellcash/crypticons.svg?branch=master)](https://travis-ci.org/mitchellcash/crypticons)

> Crypticons are a scalable set of cryptocurrency icons.

## Adding/Updating an icon

To begin working with this repository you'll need to run `script/bootstrap`. This installs everything needed. Currently there's a requirement of [Sketch](https://www.sketchapp.com/) to be able to edit and export the SVG files.

Open up the [crypticons-master.sketch file](). Edit the slice you want to update, or add a new one. Save the file. If you've added a new icon, you'll need to add a new entry and keywords for it in the `data.json` file. Run `script/build`. This will export the crypticons from the sketch file, minify them, and output into `lib/*/build/svg` directories.

## Libraries

This repository is a repository containing other packages. Each of them are in the `lib/` folder and give access to crypticons on a different platform / language.

| Package | Version |
|---|---|
| **[crypticons](/lib/crypticons_node)** <br />Node.js package with Javascript API | [![npm version](https://img.shields.io/npm/v/crypticons.svg)](https://www.npmjs.org/package/crypticons) |
| **[crypticons](/lib/crypticons_gem)** <br />Ruby gem with Ruby API | [![Gem version](https://img.shields.io/gem/v/crypticons.svg)](https://rubygems.org/gems/crypticons) |
| [crypticons_helper](/lib/crypticons_helper)<br />Rails helper for using crypticons|  [![Gem version](https://img.shields.io/gem/v/crypticons_helper.svg)](https://rubygems.org/gems/crypticons_helper) |
| [jekyll-crypticons](/lib/jekyll-crypticons)<br />Jekyll plugin for using crypticons | [![Gem version](https://img.shields.io/gem/v/jekyll-crypticons.svg)](https://rubygems.org/gems/jekyll-crypticons) |

## Recognition

Crypticons is heavily based on the GitHub [Octicons project](https://github.com/primer/octicons).

## License

(c) Mitchell Cash

_Code License:_ [MIT](./LICENSE)  
