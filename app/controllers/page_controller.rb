class PageController < ApplicationController
  def index
    @categories = Category.all
    @target_blog = Blog.where(category_id: 1).order('updated_at ASC').first
    @blogs = Blog.where(category_id: 1).order('updated_at ASC')
  end
  
  def category
    @categories = Category.all
    @target_blog = Blog.where(category_id: params[:id]).order('updated_at ASC').first
    @blogs = Blog.where(category_id: params[:id]).order('updated_at ASC')
    render template: 'page/index'
  end
  
  def page
    @categories = Category.all
    @target_blog = Blog.where(category_id: params[:category_id]).where(id: params[:id]).first
    @blogs = Blog.where(category_id: params[:category_id]).order('updated_at ASC')
    render template: 'page/index'
  end
end
