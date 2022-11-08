class Post < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :points2view, presence: true, numericality: true
end
