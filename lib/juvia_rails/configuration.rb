module JuviaRails
  class Configuration
    
    attr_accessor :site_key, :comment_order, :server_url, :include_css
 
    def initialize
      @site_key = nil
      @server_url = nil
      @comment_order = 'latest-first'
      @include_css = '!window.Juvia'
    end
  end
end