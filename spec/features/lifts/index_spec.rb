require "rails_helper"

RSpec.describe "lifts index page", type: :feature do

  before (:each) do 
    @resort_2 = Resort.create!(name: "Copper Mountain",
                              location: "Summit County, Colorado",
                              peak_elevation: 12313,
                              is_ikon_resort: true)
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

  it "has a header that says 'All Lifts'" do
    visit "/lifts"

    expect(page).to have_content("All Lifts")
  end

  it "can see all lifts and lift attributes" do
    visit "/lifts"

    expect(page).to have_content(@lift_3.name)
    expect(page).to have_content(@lift_3.seats)
    expect(page).to have_content("Is Gondola: #{@lift_3.is_gondola}")
    expect(page).to have_content("Lift Id: #{@lift_3.id}")
    expect(page).to have_content("Resort Id: #{@lift_3.resort_id}")

    expect(page).to have_content(@lift_4.name)
    expect(page).to have_content(@lift_4.seats)
    expect(page).to have_content("Is Gondola: #{@lift_4.is_gondola}")
    expect(page).to have_content("Lift Id: #{@lift_4.id}")
    expect(page).to have_content("Resort Id: #{@lift_4.resort_id}")
  end

end 