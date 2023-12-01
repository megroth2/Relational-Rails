class CreateResort < ActiveRecord::Migration[7.0]
  def change
    create_table :resorts do |t|
      t.string :name,
      t.string :location,
      t.integer :peak_elevation,
      t.boolean :is_ikon_resort

      t.timestamps
    end
  end
end
