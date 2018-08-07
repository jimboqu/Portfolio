module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      #the brackets are to stop ruby just returning the last one
      (link_to "Sign in", new_user_session_path, class: style) + 
      (link_to "Sign up", new_user_registration_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete,  class: style
    end
  end

  def source_helper
  	greeting = "Thanks for visiting me from #{session[:source]}"
    if session[:source] 
      content_tag(:p, greeting, class: "source-greeting") 
    end 
  end
end
