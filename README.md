# README

## Iteration 1
### CRUD

[x] done

User Story 1, Resort Index 

As a visitor
When I visit '/resorts'
Then I see the name of each resort record in the system

[x] done

User Story 2, Resort Show 

As a visitor
When I visit '/resorts/:id'
Then I see the resort with that id including the resort's attributes
(data from each column that is on the resort table)

[x] done

User Story 3, Lift Index 

As a visitor
When I visit '/lifts'
Then I see each Lift in the system including the Lift's attributes
(data from each column that is on the lift table)

[x] done

User Story 4, Lift Show 

As a visitor
When I visit '/lifts/:id'
Then I see the lift with that id including the lift's attributes
(data from each column that is on the lift table)

[x] done

User Story 5, Resort Lifts Index 

As a visitor
When I visit '/resorts/:resort_id/lifts'
Then I see each Lift that is associated with that Resort with each Lift's attributes
(data from each column that is on the lift table)

### ActiveRecord

[x] done

User Story 6, Resort Index sorted by Most Recently Created 

As a visitor
When I visit the resort index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created

[x] done

User Story 7, Resort Lift Count

As a visitor
When I visit a resort's show page
I see a count of the number of lifts associated with this resort

### Usability

[x] done

User Story 8, Lift Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Lift Index

[ ] done

User Story 9, Resort Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Resort Index

[ ] done

User Story 10, Resort Lift Index Link

As a visitor
When I visit a resort show page ('/resorts/:id')
Then I see a link to take me to that resort's `lifts` page ('/resorts/:id/lifts')

## Iteration 2

### CRUD

### ActiveRecord

### Usability

## Iteration 3

### CRUD

### ActiveRecord

### Usability