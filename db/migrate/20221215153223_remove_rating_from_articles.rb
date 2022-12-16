class RemoveRatingFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :rating, :integer
  end
end
