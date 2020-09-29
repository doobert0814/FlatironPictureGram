class Comment < ApplicationRecord
    t.string :name
    t.belongs_to :user
    t.belongs_to :picture
end
