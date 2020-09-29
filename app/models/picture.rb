class Picture < ApplicationRecord
    belongs_to :owner, class_name :
    has_many :picture_tags
    has_many :tags through: :picture_tags
end
