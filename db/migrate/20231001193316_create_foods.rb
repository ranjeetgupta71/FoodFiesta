class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
