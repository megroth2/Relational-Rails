require "rails_helper"

RSpec.describe "resorts show page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:             "Winter Park",
                               location:         "Grand County, Colorado",
                               peak_elevation:   12060,
                               is_ikon_resort:   true)
    @resort_2 = Resort.create!(name:             "Copper Mountain",
                               location:         "Summit County, Colorado",
                               peak_elevation:   12313,
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
    @lift_3 = Lift.create!(name:        "American Eagle",
                           seats:       6,
                           is_gondola:  true,
                           id:          3,
                           resort_id:   @resort_2.id)
    @lift_4 = Lift.create!(name:        "American Flyer",
                           seats:       6,
                           is_gondola:  false,
                           id:          4,
                           resort_id:   @resort_2.id)
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

  it "has a header that says 'Resort Details Page'" do
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

  it "can see resort lift count" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_content("Lift Count: 2")

    visit "/resorts/#{@resort_2.id}"

    expect(page).to have_content("Lift Count: 2")

  end

  it "has a link to that resort's lifts page" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_link("View All Resort Lifts")

    click_link("View All Resort Lifts")

    expect(current_path).to eq("/resorts/#{@resort_1.id}/lifts")
  end

  it "has link to edit page" do
    visit "/resorts/#{@resort_1.id}"

    expect(page).to have_link("Update Resort")

    click_link("Update Resort")

    expect(current_path).to eq("/resorts/#{@resort_1.id}/edit")
  end

end