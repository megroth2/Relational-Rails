require "rails_helper"

RSpec.describe Resort, type: :model do

  it 'exists' do
    resort = Resort.create!(id: 1, name: "test")

    expect(resort).to_be(Resort)
  end

end