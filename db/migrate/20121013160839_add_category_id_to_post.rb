class AddCategoryIdToPost < ActiveRecord::Migration
  def change
    add_column "posts", "pcid", :integer
  end
end
