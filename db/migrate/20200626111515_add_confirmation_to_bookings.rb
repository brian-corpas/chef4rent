class AddConfirmationToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :confirmation, :string, default: 'unconfirmed'
  end
end
