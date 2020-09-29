class Picture < ApplicationRecord
    belongs_to :owner, class_name: 'User'
    has_many :picture_tags
    has_many :tags, through: :picture_tags
    has_many :comments
    has_many :users, through: :comments 
end
