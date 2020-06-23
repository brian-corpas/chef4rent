class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :chef, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.text :event_details
      t.integer :nr_guests

      t.timestamps
    end
  end
end
