class AddSeatsToLifts < ActiveRecord::Migration[7.0]
  def change
    add_column :lifts, :seats, :integer
  end
end
