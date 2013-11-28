class AddReservationsTable < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :flight_id
      t.integer :user_id
      t.string :meal
      t.string :notes

      t.timestamps
    end
  end
end