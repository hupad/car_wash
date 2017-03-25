class CreateWashes < ActiveRecord::Migration[5.0]
  def change
    create_table :washes do |t|
      t.references :vehicle_type, foreign_key: true
      t.integer :amount
      t.string :car_number, limit: 6

      t.timestamps
    end
  end
end
