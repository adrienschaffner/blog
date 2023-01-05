class AddLockedAtToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :locked_at, :datetime
  end
end
