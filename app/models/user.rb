class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, through: :posts, dependent: :destroy
    validates :name, presence: true
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }
    validates :email, uniqueness: true, on: :create
    before_save { self.email = email.downcase }
end