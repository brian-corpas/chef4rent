class AddUserToChefs < ActiveRecord::Migration[6.0]
  def change
    add_reference :chefs, :user, null: true, foreign_key: true
  end
end
