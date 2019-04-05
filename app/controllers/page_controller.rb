class PageController < ApplicationController
  def index
    @categories = Category.all
    @target_blog = Blog.order('category_id ASC').order('created_at ASC').first
    #@target_blog = Blog.where(category_id: 1).order('created_at ASC').first
    @blogs = Blog.where(category_id: @target_blog.category_id).order('created_at ASC')
    set_title
  end
  
  def category
    @categories = Category.all
    @target_blog = Blog.where(category_id: params[:id]).order('created_at ASC').first
    @blogs = Blog.where(category_id: params[:id]).order('created_at ASC')
    set_title
    render template: 'page/index'
  end
  
  def page
    @categories = Category.all
    @target_blog = Blog.where(category_id: params[:category_id]).where(id: params[:id]).first
    @blogs = Blog.where(category_id: params[:category_id]).order('created_at ASC')
    set_title
    render template: 'page/index'
  end

  private

  def set_title
    if !@target_blog.nil?
      @title = @target_blog.title
    end
  end
end
