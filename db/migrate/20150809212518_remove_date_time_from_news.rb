class RemoveDateTimeFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :date_time, :datetime
  end
end
