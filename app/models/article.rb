class Article < ApplicationRecord
  include Visible
  has_one_attached :picture
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
