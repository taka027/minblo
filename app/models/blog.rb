class Blog < ApplicationRecord
  def prev
    Blog.where("updated_at < ?", self.updated_at).order("updated_at DESC").first
  end
 
  def next
    Blog.where("updated_at > ?", self.updated_at).order("updated_at ASC").first
  end
end
