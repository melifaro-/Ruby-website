class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.datetime :createdate

      t.timestamps
    end
  end
end
