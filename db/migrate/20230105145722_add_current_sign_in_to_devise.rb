class AddCurrentSignInToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :current_sign_in_at, :datetime
  end
end
