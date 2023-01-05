class AddSignInCountToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :sign_in_count, :integer, default: 0, null: false
  end
end
