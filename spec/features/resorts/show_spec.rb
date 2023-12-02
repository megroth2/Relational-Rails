require "rails_helper"

RSpec.describe "lifts index page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:             "Winter Park",
                              location:         "Grand County, Colorado",
                              peak_elevation:   12060,
                              is_ikon_resort:   true)
  end

  it "has link to Resort Index" do
    visit "/resorts/#{@resort_1.id}"
    
    expect(page).to have_link("Resort Index")

    click_link("Resort Index")

    expect(current_path).to eq("/resorts")
  end

  it "has link to Lift Index" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_link("Lift Index")

    click_link("Lift Index")

    expect(current_path).to eq("/lifts")
  end

  it "has a header that says 'All Lifts'" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_content("Resort Details Page")
  end

  it "can see all attributes of a single resort" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_content(@resort_1.name)
    expect(page).to have_content("Location: #{@resort_1.location}")
    expect(page).to have_content("Peak Elevation: #{@resort_1.peak_elevation}")
    expect(page).to have_content("Is Ikon Resort: #{@resort_1.is_ikon_resort}")
    expect(page).to have_content("Resort Id: #{@resort_1.id}")
  end

end