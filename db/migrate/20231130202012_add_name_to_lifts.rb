class AddNameToLifts < ActiveRecord::Migration[7.0]
  def change
    add_column :lifts, :name, :string
  end
end
