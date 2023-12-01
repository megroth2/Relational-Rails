class Resort < ApplicationRecord
  has_many :lifts

  def count_lifts
    self.lifts.count
  end

end