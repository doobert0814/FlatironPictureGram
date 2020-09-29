class Tag < ApplicationRecord
   has_many :picture_tags
   has_many :picures, through: :picture_tags
end
