require "rails_helper"

RSpec.describe "lifts show page", type: :feature do

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
  end

  it "has link to Resort Index" do
    visit "/lifts/#{@lift_3.id}"
    
    expect(page).to have_link("Resort Index")

    click_link("Resort Index")

    expect(current_path).to eq("/resorts")
  end

  it "has link to Lift Index" do
    visit "/lifts/#{@lift_3.id}"

    expect(page).to have_link("Lift Index")

    click_link("Lift Index")

    expect(current_path).to eq("/lifts")
  end

  it "has a header that says 'Lift Details Page'" do
    visit "/lifts/#{@lift_3.id}"

    expect(page).to have_content("Lift Details Page")
  end

  it "can see all attributes of a single lift" do
    visit "/lifts/#{@lift_3.id}"

    expect(page).to have_content(@lift_3.name)
    expect(page).to have_content("Seats: #{@lift_3.seats}")
    expect(page).to have_content("Is Gondola: #{@lift_3.is_gondola}")
    expect(page).to have_content("Lift Id: #{@lift_3.id}")
    expect(page).to have_content("Resort Id: #{@lift_3.resort_id}")
  end

end