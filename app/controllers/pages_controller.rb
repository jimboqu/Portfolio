class PagesController < ApplicationController
  def home
  	@blog = Blog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end

  def content_news
    @tweets = SocialTool.twitter_search
  end
end
