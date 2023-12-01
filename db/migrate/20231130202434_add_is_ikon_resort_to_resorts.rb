class AddIsIkonResortToResorts < ActiveRecord::Migration[7.0]
  def change
    add_column :resorts, :is_ikon_resort, :boolean
  end
end
