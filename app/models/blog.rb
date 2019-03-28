class Blog < ApplicationRecord
  belongs_to :category
  def prev
    Blog.where(category_id: self.category_id).where("updated_at < ?", self.updated_at).order("updated_at DESC").first
  end
 
  def next
    Blog.where(category_id: self.category_id).where("updated_at > ?", self.updated_at).order("updated_at ASC").first
  end
end
