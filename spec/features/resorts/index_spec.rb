require "rails_helper"

RSpec.describe "resorts index page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:            "Winter Park",
                               location:        "Grand County, Colorado",
                               peak_elevation:  12060,
                               is_ikon_resort:  true)
    @resort_2 = Resort.create!(name:            "Copper Mountain",
                               location:        "Summit County, Colorado",
                               peak_elevation:  12313,
                               is_ikon_resort:  true)
  end

  it "has link to Resort Index" do
    visit "/resorts"
    
    expect(page).to have_link("Resort Index")

    click_link("Resort Index")

    expect(current_path).to eq("/resorts")
  end

  it "has link to Lift Index" do
    visit "/resorts"

    expect(page).to have_link("Lift Index")

    click_link("Lift Index")

    expect(current_path).to eq("/lifts")
  end

  it "has a header that says 'All Resorts'" do
    visit "/resorts"

    expect(page).to have_content("All Resorts")
  end

  it "can see all resorts and created datetime" do
    visit "/resorts"

    expect(page).to have_content(@resort_1.name)
    expect(page).to have_content(@resort_1.created_at)

    expect(page).to have_content(@resort_2.name)
    expect(page).to have_content(@resort_2.created_at)
 
  end

end 