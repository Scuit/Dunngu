class AddDateToNews < ActiveRecord::Migration
  def change
    add_column :news, :date, :date
  end
end
