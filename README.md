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