class PagesController < ApplicationController
  def home
    @posts = Blog.all
  end

  def about
  end

  def contact
    @skills = Skill.all
  end
end
