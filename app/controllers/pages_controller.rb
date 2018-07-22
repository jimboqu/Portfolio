class PagesController < ApplicationController
  def home
  	@blog = Blog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end
end
