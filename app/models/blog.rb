class Blog < ApplicationRecord
  belongs_to :category
  def prev
    Blog.where(category_id: self.category_id).where("created_at < ?", self.created_at).order("created_at DESC").first
  end
 
  def next
    Blog.where(category_id: self.category_id).where("created_at > ?", self.created_at).order("created_at ASC").first
  end
end
