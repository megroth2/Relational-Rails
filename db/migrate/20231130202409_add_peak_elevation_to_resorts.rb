class AddPeakElevationToResorts < ActiveRecord::Migration[7.0]
  def change
    add_column :resorts, :peak_elevation, :integer
  end
end
