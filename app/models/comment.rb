class Comment < ApplicationRecord
  include Visible
  validates :commenter, presence: true
  validates :body, presence: true
  # set up active record association
  belongs_to :article
end
