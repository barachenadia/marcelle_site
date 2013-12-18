class AddIndexToMembresEmail < ActiveRecord::Migration
  def change
  	add_index :membres, :email, :unique => true
  end
end
