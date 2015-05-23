class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.text :body
      t.string :title
      t.timestamps
    end
  end
end
