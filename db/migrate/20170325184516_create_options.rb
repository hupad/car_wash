class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :cost

      t.timestamps
    end
  end
end
