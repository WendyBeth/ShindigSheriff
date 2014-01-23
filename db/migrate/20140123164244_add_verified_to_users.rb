class AddVerifiedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :verified, :boolean, :null => false, :default => false

    remove_column :users, :confirmation_token
    remove_column :users, :confirmed_at
    remove_column :users, :confirmation_sent_at
    remove_column :users, :unconfirmed_email
  end
end
