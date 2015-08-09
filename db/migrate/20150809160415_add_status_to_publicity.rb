class AddStatusToPublicity < ActiveRecord::Migration
  def change
    add_column :publicities, :status, :boolean
  end
end
