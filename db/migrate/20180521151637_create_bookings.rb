class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.string :place
      t.string :references
      t.integer :pricce
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
    end
  end
end
