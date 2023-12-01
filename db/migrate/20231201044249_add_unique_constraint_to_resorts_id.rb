class AddUniqueConstraintToResortsId < ActiveRecord::Migration[7.0]
  def change
    add_index :resorts, :id, unique: true
  end
end
