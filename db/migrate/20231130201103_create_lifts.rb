class CreateLifts < ActiveRecord::Migration[7.0]
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :seats
      t.boolean :is_gondola

      t.timestamps
    end
  end
end
