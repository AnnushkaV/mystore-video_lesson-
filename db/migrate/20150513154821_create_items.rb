class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :price
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index :items, :price
    add_index :items, :name
  end
end
