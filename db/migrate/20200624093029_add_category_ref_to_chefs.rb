class AddCategoryRefToChefs < ActiveRecord::Migration[6.0]
  def change
    add_reference :chefs, :category, null: false, foreign_key: true
  end
end
