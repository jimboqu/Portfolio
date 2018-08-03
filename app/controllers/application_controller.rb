class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include GuestUser
  include PageTitleConcern

  before_action :set_copyright

  def set_copyright
    @copyright = JimboquCopyright::Renderer.copyright("James", "Reserved")
  end

  module JimboquCopyright 
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year}  #{name}. #{msg}".html_safe
      end
    end
  end
  
end
