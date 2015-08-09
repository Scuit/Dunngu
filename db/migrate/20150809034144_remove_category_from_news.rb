class RemoveCategoryFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :category_id, :integer
  end
end
