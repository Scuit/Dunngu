class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
