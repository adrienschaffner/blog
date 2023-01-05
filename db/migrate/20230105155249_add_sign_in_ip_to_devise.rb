class AddSignInIpToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :current_sign_in_ip, :string
    add_column :admins, :last_sign_in_ip, :string
  end
end
