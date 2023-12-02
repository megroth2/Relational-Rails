require "rails_helper"

RSpec.describe "lifts index page", type: :feature do

  it "has a header that says 'All Lifts'" do
    visit "/lifts"

    expect(page).to have_content("All Lifts")
  end

  it "has link to Resort Index" do
    visit "/lifts"
    
    expect(page).to have_link("Resort Index")

    click_link("Resort Index")

    expect(current_path).to eq("/resorts")
  end

  it "has link to Lift Index" do
    visit "/lifts"

    expect(page).to have_link("Lift Index")

    click_link("Lift Index")

    expect(current_path).to eq("/lifts")
  end

  it "can see all lifts and lift attributes" do
    resort_2 = Resort.create!(name: "Copper Mountain",
                              location: "Summit County, Colorado",
                              peak_elevation: 12313,
                              is_ikon_resort: true)
    lift_1 = Lift.create!(name:        "American Eagle",
                         seats:       6,
                         is_gondola:  true,
                         id:          1,
                         resort_id:   resort_2.id)
    lift_2 = Lift.create!(name:        "American Flyer",
                         seats:       6,
                         is_gondola:  false,id:          2,
                         resort_id:   resort_2.id)

    visit "/lifts"

    expect(page).to have_content(lift_1.name)
    expect(page).to have_content(lift_1.seats)
    expect(page).to have_content("Is Gondola: #{lift_1.is_gondola}")
    expect(page).to have_content("Lift Id: #{lift_1.id}")
    expect(page).to have_content("Resort Id: #{lift_1.resort_id}")

    expect(page).to have_content(lift_2.name)
    expect(page).to have_content(lift_2.seats)
    expect(page).to have_content("Is Gondola: #{lift_2.is_gondola}")
    expect(page).to have_content("Lift Id: #{lift_2.id}")
    expect(page).to have_content("Resort Id: #{lift_2.resort_id}")
  end

end 