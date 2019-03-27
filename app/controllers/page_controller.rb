class PageController < ApplicationController
  def index
    @target_blog = Blog.order('updated_at ASC').first
    @blogs = Blog.order('updated_at ASC')
  end
  
  def page
    @target_blog = Blog.find(params[:id])
    @blogs = Blog.order('updated_at ASC')
    render template: 'page/index'
  end
end
