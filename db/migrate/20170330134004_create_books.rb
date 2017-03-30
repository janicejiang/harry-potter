class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.integer :series
      t.integer :price, default: 100

      t.timestamps
    end
  end
end
