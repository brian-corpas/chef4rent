class CreateChefs < ActiveRecord::Migration[6.0]
  def change
    create_table :chefs do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :price_range
      t.string :location

      t.timestamps
    end
  end
end
