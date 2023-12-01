class AddLocationToResorts < ActiveRecord::Migration[7.0]
  def change
    add_column :resorts, :location, :string
  end
end
