module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      #the brackets are to stop ruby just returning just the last one
      (link_to "Sign in", new_user_session_path, class: style) + 
      (link_to "Sign up", new_user_registration_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete,  class: style
    end
  end

  def source_helper(styles)
  	greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to "contact me", contact_path }"
    if session[:source] 
      content_tag(:p, greeting.html_safe, class: styles) 
    end 
  end
#the method below takes two arguments and makes a nav. 
  def navigation_helper style, tag
nav_links = <<NAV
  <#{tag}><a href="#{root_path}" class="#{style} #{active? root_path}">Home</a></#{tag}>
  <#{tag}><a href="#{about_path}" class="#{style} #{active? about_path}">About</a></#{tag}>
  <#{tag}><a href="#{contact_path}" class="#{style} #{active? contact_path}">Contact</a></#{tag}>
  <#{tag}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blog</a></#{tag}>
  <#{tag}><a href="#{content_news_path}" class="#{style} #{active? content_news_path}">Twitter</a></#{tag}>
  <#{tag}><a href="#{folios_path}" class="#{style} #{active? folios_path}">Folio</a></#{tag}>
NAV
  nav_links.html_safe
  end
#below checks if you're on that path. Active is a class. It gets inserted in quotes in method
  def active? path 
    "active" if current_page? path
  end
end
