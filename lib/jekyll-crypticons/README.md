# Crypticons jekyll tag

[![Gem version](https://img.shields.io/gem/v/jekyll-crypticons.svg)](https://rubygems.org/gems/jekyll-crypticons)
[![Build Status](https://travis-ci.org/mitchellcash/crypticons.svg?branch=master)](https://travis-ci.org/mitchellcash/crypticons)

> A liquid jekyll tag that injects Crypticon svg into the page

This jekyll liquid tag, is a plugin that will let you easily include svg crypticons in your jekyll sites.

## Install

1. Add this to your `Gemfile`

    ```rb
    gem 'jekyll-crypticons'
    ```

2. Add this to your jekyll `_config.yml`

    ```yml
    gems:
      - jekyll-crypticons
    ```

3. Use this tag in your jekyll templates

    ```
    {% crypticon bitcoin height:32 class:"right left" aria-label:hi %}
    ```

We recommend including the CSS in the [crypticons_node](../crypticons_node/) module. You can also npm install that package and include `build/build.css` in your styles.

## Documentation

For a full list of options available, see the [crypticons_gem documentation](../crypticons_gem/#documentation)

## License

(c) Mitchell Cash

[MIT](./LICENSE)  

[crypticons]: https://github.com/mitchellcash/crypticons
