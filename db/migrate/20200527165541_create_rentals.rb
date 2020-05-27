class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.datetime :start_at
      t.datetime :stop_at
      t.references :suit
      t.references :customer

      t.timestamps
    end
  end
end
