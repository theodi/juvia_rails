require 'juvia_rails/version'
require 'juvia_rails/configuration'
require 'juvia_rails/view_helpers'

module JuviaRails

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= JuviaRails::Configuration.new
    yield(configuration)
  end
 
  class Railtie < Rails::Railtie
    initializer "juvia_rails.helpers" do
      ActionView::Base.send :include, JuviaRails::ViewHelpers
    end
  end

end