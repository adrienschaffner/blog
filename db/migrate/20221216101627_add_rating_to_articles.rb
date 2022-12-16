class AddRatingToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :rating, :integer
  end
end
