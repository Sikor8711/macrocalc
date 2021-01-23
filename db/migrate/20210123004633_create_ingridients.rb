class CreateIngridients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingridients do |t|
      t.string :name
      t.integer :volume
      t.integer :cals
      t.integer :fats
      t.integer :carbs
      t.integer :proteins
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
