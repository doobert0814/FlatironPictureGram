class Tag < ApplicationRecord
   has_many :picture_tags
   has_many :pictures, through: :picture_tags

   def self.most_popular
      Tag.all.map do |tag|
         t = tag.pictures.length
         tt = t.drop(8)
         return tt
         
      end
   end

   def self.trending
         Tag.all.map do |tag|
            tag.pictures
         end
   end
end
