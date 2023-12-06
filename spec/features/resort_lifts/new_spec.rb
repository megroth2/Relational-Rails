require "rails_helper"

RSpec.describe "new resort lift page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:             "Winter Park",
                               location:         "Grand County, Colorado",
                               peak_elevation:   12060,
                               is_ikon_resort:   true)
  end

  it "has a new lift form" do 
    visit "/resorts/#{@resort_1.id}/lifts/new"

    expect(page).to have_content("Name:")
    expect(page).to have_content("Seats:")
    expect(page).to have_content("Is Gondola:")
  end

  it "can create a lift" do
    visit "/resorts/#{@resort_1.id}/lifts/new"

    fill_in("name", with: "The Gondola")
    fill_in("seats", with: 8)
    check("is_gondola")
    expect(page).to have_button("Create Lift")

    click_button("Create Lift")

    expect(current_path).to eq("/resorts/#{@resort_1.id}/lifts")
    expect(page).to have_content("The Gondola")
  end

end