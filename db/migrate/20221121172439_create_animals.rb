class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :fear
      t.integer :price

      t.timestamps
    end
  end
end
