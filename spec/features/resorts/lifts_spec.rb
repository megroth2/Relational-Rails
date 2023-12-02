require "rails_helper"

RSpec.describe "lifts show page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:             "Winter Park",
                              location:         "Grand County, Colorado",
                              peak_elevation:   12060,
                              is_ikon_resort:   true)

    @lift_1 = Lift.create!(name:        "The Gondola",
                          seats:       8,
                          is_gondola:  true,
                          id:          1,
                          resort_id:   @resort_1.id)
    @lift_2 = Lift.create!(name:        "Panoramic Express",
                          seats:       6,
                          is_gondola:  false,
                          id:          2,
                          resort_id:   @resort_1.id)  
  end

  it "has link to Resort Index" do
    visit "/resorts/#{@resort_1.id}/lifts"
    
    expect(page).to have_link("Resort Index")

    click_link("Resort Index")

    expect(current_path).to eq("/resorts")
  end

  it "has link to Lift Index" do
    visit "/resorts/#{@resort_1.id}/lifts"

    expect(page).to have_link("Lift Index")

    click_link("Lift Index")

    expect(current_path).to eq("/lifts")
  end

  it "has a header that says 'All Resort Lifts'" do
    visit "/resorts/#{@resort_1.id}/lifts"

    expect(page).to have_content("All Resort Lifts")
  end

  it "can see all attributes of a single lift" do
    visit "/resorts/#{@resort_1.id}/lifts"

    expect(page).to have_content(@lift_1.name)
    expect(page).to have_content("Seats: #{@lift_1.seats}")
    expect(page).to have_content("Is Gondola: #{@lift_1.is_gondola}")
    expect(page).to have_content("Lift Id: #{@lift_1.id}")

    expect(page).to have_content(@lift_2.name)
    expect(page).to have_content("Seats: #{@lift_2.seats}")
    expect(page).to have_content("Is Gondola: #{@lift_2.is_gondola}")
    expect(page).to have_content("Lift Id: #{@lift_2.id}")
  end

end