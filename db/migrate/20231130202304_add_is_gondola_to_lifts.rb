class AddIsGondolaToLifts < ActiveRecord::Migration[7.0]
  def change
    add_column :lifts, :is_gondola, :boolean
  end
end
