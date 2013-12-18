class AddRememberTokenToMembres < ActiveRecord::Migration
  def change
  	add_column :membres, :remember_token, :string
    add_index  :membres, :remember_token
  end
end
