class AddNameToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :name, :string
  end
end
