# Crypticons rails helper

[![Gem version](https://img.shields.io/gem/v/crypticons_helper.svg)](https://rubygems.org/gems/crypticons_helper)
[![Build Status](https://travis-ci.org/mitchellcash/crypticons.svg?branch=master)](https://travis-ci.org/mitchellcash/crypticons)

> A rails helper that inlines SVG crypticons

This rails helper let's you easily include svg crypticons in your rails apps.

## Install

1. Add this to your `Gemfile`

    ```rb
    gem 'crypticons_helper'
    ```

3. Use this tag in your erbs

    ```rb
    <%= crypticon "bitcoin", :height => 32,  :class => "right left", :"aria-label" => "hi" %>
    ```

We recommend including the CSS in the [crypticons_node](../crypticons_node/) module. You can also npm install that package and include `build/build.css` in your styles.

## Documentation

For a full list of options available, see the [crypticons_gem documentation](../crypticons_gem/#documentation)

## License

(c) Mitchell Cash

[MIT](./LICENSE)  

[crypticons]: https://github.com/mitchellcash/crypticons
