class Picture < ApplicationRecord
    belongs_to :owner, class_name: 'User'
    has_many :picture_tags
    has_many :tags, through: :picture_tags
    has_many :comments
    has_many :users, through: :comments 

    def tag_name=(name)
        tag = Tag.find_or_create_by(name: name)
        PictureTag.create(tag_id: tag.id, picture_id: self.id)
    end

    def tag_name
        
    end

    def comment_name=(name)
        comment = Comment.find_or_create_by(comment: comment)
        #Comment.create(comment_id: comment.id, picture_id: self.id)
    end

    def comment_name 
        
    end
end
