require "rails_helper"

RSpec.describe "resorts show page", type: :feature do

  before (:each) do
    @resort_1 = Resort.create!(name:             "Winter Prk",
                               location:         "Grand Count, Colorado",
                               peak_elevation:   1206,
                               is_ikon_resort:   false)
  end

  it "can view resort details in the edit form" do
    visit "/resorts/#{@resort_1.id}/edit"

    expect(page).to have_content("Edit Resort")
    
    expect(page).to have_content("Name:")
    expect(page).to have_content("Location:")
    expect(page).to have_content("Peak Elevation:")
    expect(page).to have_content("Is Ikon Resort:")
  end

  it "can update resort" do
    visit "/resorts/#{@resort_1.id}/edit"

    fill_in("name", with: "Winter Park")
    fill_in("location", with: "Grand County, Colorado")
    fill_in("peak_elevation", with: '12060')
    check("is_ikon_resort")
    
    click_button("Update Resort")
    
    save_and_open_page

    expect(current_path).to eq("/resorts/#{@resort_1.id}")
    expect(page).to have_content("Winter Park")
    expect(page).to have_content("Grand County, Colorado")
    expect(page).to have_content(12060)
    expect(page).to have_content(true)
  end

end