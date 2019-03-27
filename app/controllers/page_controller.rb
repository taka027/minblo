class PageController < ApplicationController
  def index
    @target_blog = Blog.first
    @blogs = Blog.all
  end
end
