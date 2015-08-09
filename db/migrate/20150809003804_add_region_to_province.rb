class AddRegionToProvince < ActiveRecord::Migration
  def change
    add_reference :provinces, :region, index: true
  end
end
