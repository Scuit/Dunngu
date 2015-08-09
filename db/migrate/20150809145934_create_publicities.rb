class CreatePublicities < ActiveRecord::Migration
  def change
    create_table :publicities do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
