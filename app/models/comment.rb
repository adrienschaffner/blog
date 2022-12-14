class Comment < ApplicationRecord
  include Visible
  # set up active record association
  belongs_to :article
end
