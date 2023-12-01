require "rails_helper"

RSpec.describe Resort, type: :model do

  describe "associations" do
    it{should have_many(:lifts)}
  end

  describe "#count_lifts" do
    it 'returns count of lifts' do
      resort_1 = Resort.create!(name: "Winter Park")
      lift_1 = Lift.create!(name: "The Gondola", resort_id: resort_1.id)
      lift_2 = Lift.create!(name: "Panoramic Express", resort_id: resort_1.id)

      expect(resort_1).to be_a(Resort)
      expect(lift_1).to be_a(Lift)
      expect(lift_2).to be_a(Lift)
      
      expect(resort_1.count_lifts).to eq(2)
    end
  end

end