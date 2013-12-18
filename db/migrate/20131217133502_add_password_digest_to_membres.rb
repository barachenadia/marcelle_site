class AddPasswordDigestToMembres < ActiveRecord::Migration
  def change
    add_column :membres, :password_digest, :string
  end
end
