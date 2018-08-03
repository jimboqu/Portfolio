class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include GuestUser
  include PageTitleConcern

  before_action :set_copyright

  def set_copyright
    @copyright = JimboquCopyright::Renderer.copyright("James", "Reserved")
  end

  
  
end
