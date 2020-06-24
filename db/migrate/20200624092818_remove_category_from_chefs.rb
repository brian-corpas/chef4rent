class RemoveCategoryFromChefs < ActiveRecord::Migration[6.0]
  def change
    remove_column :chefs, :category
  end
end
