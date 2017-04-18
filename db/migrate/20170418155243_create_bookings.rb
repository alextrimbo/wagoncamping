class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :price
      t.decimal :total
      t.references :user, foreign_key: true
      t.references :camping, foreign_key: true

      t.timestamps
    end
  end
end
