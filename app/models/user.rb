class User < ApplicationRecord
    has_many :owned_pictures, class_name:'Picture', foreign_key: 'owner_id'
    has_many :comments
    has_many :pictures, through: :comments

    validates :email, :presence => true, :uniqueness => true
    validates_uniqueness_of :username


    has_secure_password
end
