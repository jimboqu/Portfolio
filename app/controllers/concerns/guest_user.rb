module GuestUser

extend ActiveSupport::Concern

included do 
  before_action :current_user
end

def current_user
  super || guest_user
end

def guest_user
  OpenStruct.new(name:"Guest User", 
  	first_name: "Guest", 
  	last_name: 'User', 
  	email: "guest@guest.com")
end

end