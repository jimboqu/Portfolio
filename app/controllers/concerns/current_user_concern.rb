module CurrentUserConcern
#this is designed to work with Petergate and allow a guest user user 
#to be displayed and switch to a name if they're logged in. Look at the login_helper function is_a?
extend ActiveSupport::Concern

included do 
  before_action :current_user
end

def current_user
  super || guest_user
end

def guest_user
  guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
	guest
end

end