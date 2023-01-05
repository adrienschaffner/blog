class AddLastSignItAtToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :last_sign_in_at, :datetime
  end
end
