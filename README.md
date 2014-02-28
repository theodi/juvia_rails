[![Build Status](http://img.shields.io/travis/theodi/juvia_rails.svg)](https://travis-ci.org/theodi/juvia_rails)
[![Dependency Status](http://img.shields.io/gemnasium/theodi/juvia_rails.svg)](https://gemnasium.com/theodi/juvia_rails)
[![Coverage Status](http://img.shields.io/coveralls/theodi/juvia_rails.svg)](https://coveralls.io/r/theodi/juvia_rails)
[![Code Climate](http://img.shields.io/codeclimate/github/theodi/juvia_rails.svg)](https://codeclimate.com/github/theodi/juvia_rails)
[![Gem Version](http://img.shields.io/gem/v/juvia_rails.svg)](https://rubygems.org/gems/juvia_rails)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://theodi.mit-license.org)
[![Badges](http://img.shields.io/:badges-7/7-ff6799.svg)](https://github.com/pikesley/badger)

# JuviaRails

This gem adds a helper for embedding [Juvia](https://github.com/phusion/juvia) comments into a Rails app.

## License

This code is open source under the MIT license. See the LICENSE.md file for full details.

## Requirements

* Rails ~> 3.2.x

## Usage

Include in your gemfile:

```
gem 'juvia_rails', github: 'theodi/juvia_rails'
```

Create a config/initializers/juvia_rails.rb file, with the following content:

```
JuviaRails.configure do |config|
  
  config.server_url    = 'http://your_juvia_server.example.com'
  config.site_key      = 'your_juvia_site_key_here'
  
  config.comment_order = 'earliest-first' # 'latest-first' by default
  config.include_css = false # true by default

end
```

Then, in your views, you can just call:

```
<%= juvia_comments %>
```

If you want to specify a topic key manually, you can:

```
<%= juvia_comments @topic_key %>
```