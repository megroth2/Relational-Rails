require "rails_helper"

RSpec.describe "new resort page", type: :feature do

  it "has a form for a new resort record" do
    visit "/resorts/new"

    expect(page).to have_content("Create Resort")
    expect(page).to have_content("Name")
    expect(page).to have_content("Location")
    expect(page).to have_content("Peak Elevation")
    expect(page).to have_content("Is Ikon Resort")
    expect(page).to have_button("Create Resort")
  end

  it "has a 'Create Resort' button to submit the form" do
    visit "/resorts/new"

    expect(page).to have_button("Create Resort")

    fill_in('name', with: "Steamboat")
    fill_in('location', with: "Routt County, Colorado")
    fill_in('peak elevation', with: 10568)
    fill_in('is ikon resort', with: true)
    click_button("Create Resort")

    expect(current_path).to eq("/resorts")
    expect(page).to have_content("Steamboat")
  end

end