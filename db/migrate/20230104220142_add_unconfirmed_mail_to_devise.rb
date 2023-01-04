class AddUnconfirmedMailToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :unconfirmed_email, :string
    # Only if using reconfirmable
    add_index :admins, :confirmation_token, :unique => true
  end
end
