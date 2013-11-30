class AddSeatNumberToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :seat_number, :string
  end
end
