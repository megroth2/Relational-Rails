class AddResortIdToLifts < ActiveRecord::Migration[7.0]
  def change
    add_reference :lifts, :resort, null: false, foreign_key: true
  end
end
