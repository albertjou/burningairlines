class AddFlightsTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :plane_id
      t.datetime :date_time
      t.string :origin
      t.string :destination
      t.timestamps
    end
  end
end
