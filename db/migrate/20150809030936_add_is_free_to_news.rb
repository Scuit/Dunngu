class AddIsFreeToNews < ActiveRecord::Migration
  def change
    add_column :news, :is_free, :boolean
  end
end
