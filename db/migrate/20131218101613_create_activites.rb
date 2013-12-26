class CreateActivites < ActiveRecord::Migration
  def change
    create_table :activites do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
