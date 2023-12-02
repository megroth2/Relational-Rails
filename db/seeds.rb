# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

resort_1 = Resort.create!(name:             "Winter Park",
                          location:         "Grand County, Colorado",
                          peak_elevation:   12060,
                          is_ikon_resort:   true)               
resort_2 = Resort.create!(name:             "Copper Mountain",
                          location:         "Summit County, Colorado",
                          peak_elevation:   12313,
                          is_ikon_resort:   true)
resort_3 = Resort.create!(name:             "Arapahoe Basin",
                          location:         "Summit County, Colorado",
                          peak_elevation:   13050,
                          is_ikon_resort:   true)    
resort_4 = Resort.create!(name:             "Breckenridge",
                          location:         "Summit County, Colorado",
                          peak_elevation:   12998,
                          is_ikon_resort:   false)
resort_5 = Resort.create!(name:             "Steamboat",
                          location:         "Routt County, Colorado",
                          peak_elevation:   10568,
                          is_ikon_resort:   true)

lift_1 = Lift.create!(name:        "The Gondola",
                      seats:       8,
                      is_gondola:  true,
                      id:          1,
                      resort_id:   resort_1.id)
lift_2 = Lift.create!(name:        "Panoramic Express",
                      seats:       6,
                      is_gondola:  false,
                      id:          2,
                      resort_id:   resort_1.id)
lift_3 = Lift.create!(name:        "American Eagle",
                      seats:       6,
                      is_gondola:  true,
                      id:          3,
                      resort_id:   resort_2.id)
lift_4 = Lift.create!(name:        "American Flyer",
                      seats:       6,
                      is_gondola:  false,
                      id:          4,
                      resort_id:   resort_2.id)