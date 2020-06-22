class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string,
    add_column :users, :address, :string,
    add_column :users, :payment_specs, :string,
    add_column :users, :is_chef, :boolean, default: false
  end
end
