class CreateSuits < ActiveRecord::Migration[6.0]
  def change
    create_table :suits do |t|
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.references :owner

      t.timestamps
    end
  end
end
