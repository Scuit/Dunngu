class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.references :user, index: true
      t.references :category, index: true
      t.references :province, index: true
      t.string :title
      t.text :body
      t.datetime :date_time
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
