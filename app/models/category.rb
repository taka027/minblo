class Category < ApplicationRecord
    has_many :blogs
    
    def countBlog
        Blog.where(category_id: self.id).count
    end
end
