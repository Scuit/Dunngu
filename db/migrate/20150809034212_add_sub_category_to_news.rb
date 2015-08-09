class AddSubCategoryToNews < ActiveRecord::Migration
  def change
    add_reference :news, :sub_category, index: true
  end
end
