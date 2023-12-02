require "rails_helper"

RSpec.describe "new resort page", type: :feature do

  it "has a form for a new resort record" do
    visit "/resorts/new"

    expect(page).to
    # Name
    # Location
    # Peak Elevation
    # Is Ikon Resort

  end

  it "has a 'Create Resort' button to submit the form" do
    visit "/resorts/new"

    expect(page).to have_button("Create Resort")

    # fill_in 
    # fill_in 
    # fill_in 
    # fill_in 
    click_button("Create Resort")

    # expect resort to be created
    expect(current_path).to eq("/resorts")
  end

end