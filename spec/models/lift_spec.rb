require "rails_helper"

RSpec.describe Lift, type: :model do

  describe 'associations' do
    it{should belong_to(:resort)}
  end

end