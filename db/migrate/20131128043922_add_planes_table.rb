class AddPlanesTable < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :model_number
      t.string :status
      t.integer :seats

      t.timestamps
    end
  end
end
