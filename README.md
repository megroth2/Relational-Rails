# README

[Database Design Document](https://lucid.app/lucidchart/b1e003a1-aebf-4274-9d88-dc65c5b90985/edit?viewport_loc=-15%2C173%2C1274%2C790%2C0_0&invitationId=inv_d790469c-1829-4e23-a7be-2e62aab12b2e)

## Iteration 1
### CRUD

[x] tests written</br>
[x] done

User Story 1, Resort Index 

As a visitor
When I visit '/resorts'
Then I see the name of each resort record in the system

[x] tests written</br>
[x] done

User Story 2, Resort Show 

As a visitor
When I visit '/resorts/:id'
Then I see the resort with that id including the resort's attributes
(data from each column that is on the resort table)

[x] tests written</br>
[x] done

User Story 3, Lift Index 

As a visitor
When I visit '/lifts'
Then I see each Lift in the system including the Lift's attributes
(data from each column that is on the lift table)

[x] tests written</br>
[x] done

User Story 4, Lift Show 

As a visitor
When I visit '/lifts/:id'
Then I see the lift with that id including the lift's attributes
(data from each column that is on the lift table)

[x] tests written</br>
[x] done

User Story 5, Resort Lifts Index 

As a visitor
When I visit '/resorts/:resort_id/lifts'
Then I see each Lift that is associated with that Resort with each Lift's attributes
(data from each column that is on the lift table)

### ActiveRecord

[x] tests written</br>
[x] done

User Story 6, Resort Index sorted by Most Recently Created 

As a visitor
When I visit the resort index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created

[x] tests written</br>
[x] done

User Story 7, Resort Lift Count

As a visitor
When I visit a resort's show page
I see a count of the number of lifts associated with this resort

### Usability

[x] tests written</br>
[x] done

User Story 8, Lift Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Lift Index

[x] tests written</br>
[x] done

User Story 9, Resort Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Resort Index

[x] tests written</br>
[x] done

User Story 10, Resort Lift Index Link

As a visitor
When I visit a resort show page ('/resorts/:id')
Then I see a link to take me to that resort's `lifts` page ('/resorts/:id/lifts')

## Iteration 2

### CRUD

[x] tests written</br>
[x] done

User Story 11, Resort Creation 

As a visitor
When I visit the Resort Index page
Then I see a link to create a new resort record, "New Resort"
When I click this link
Then I am taken to '/resorts/new' where I  see a form for a new resort record
When I fill out the form with a new resort's attributes:
And I click the button "Create resort" to submit the form
Then a `POST` request is sent to the '/resorts' route,
a new resort record is created,
and I am redirected to the resort Index page where I see the new resort displayed.

[x] tests written</br>
[x] done

User Story 12, Resort Update 

As a visitor
When I visit a resort show page
Then I see a link to update the resort "Update Resort"
When I click the link "Update Resort"
Then I am taken to '/resorts/:id/edit' where I  see a form to edit the resort's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/resorts/:id',
the resort's info is updated,
and I am redirected to the resort's Show page where I see the resort's updated info

[x] tests written</br>
[x] done

User Story 13, Resort Lift Creation 

As a visitor
When I visit a Resort Lifts Index page
Then I see a link to add a new adoptable lift for that resort "Create lift"
When I click the link
I am taken to '/resorts/:resort_id/lifts/new' where I see a form to add a new adoptable lift
When I fill in the form with the lift's attributes:
And I click the button "Create lift"
Then a `POST` request is sent to '/resorts/:resort_id/lifts',
a new lift object/row is created for that resort,
and I am redirected to the Resort Lifts Index page where I can see the new lift listed

[ ] tests written</br>
[ ] done

User Story 14, Lift Update 

As a visitor
When I visit a lift Show page
Then I see a link to update that lift "Update lift"
When I click the link
I am taken to '/lifts/:id/edit' where I see a form to edit the lift's attributes:
When I click the button to submit the form "Update lift"
Then a `PATCH` request is sent to '/lifts/:id',
the lift's data is updated,
and I am redirected to the lift Show page where I see the lift's updated information

### ActiveRecord

[ ] tests written</br>
[ ] done

User Story 15, Lift Index only shows `true` Records 

As a visitor
When I visit the lift index
Then I only see records where the boolean column is `true`

[ ] tests written</br>
[ ] done

User Story 16, Sort Resort's Lifts in Alphabetical Order by name 

As a visitor
When I visit the resort's lifts Index Page
Then I see a link to sort lifts in alphabetical order
When I click on the link
I'm taken back to the resort's lifts Index Page where I see all of the resort's lifts in alphabetical order

### Usability

[ ] tests written</br>
[ ] done

User Story 17, Resort Update From resort Index Page 

As a visitor
When I visit the resort index page
Next to every resort, I see a link to edit that resort's info
When I click the link
I should be taken to that resort's edit page where I can update its information just like in User Story 12

[ ] tests written</br>
[ ] done

User Story 18, Lift Update From Lifts Index Page 

As a visitor
When I visit the `lifts` index page or a resort `lifts` index page
Next to every lift, I see a link to edit that lift's info
When I click the link
I should be taken to that `lifts` edit page where I can update its information just like in User Story 14

## Iteration 3

### CRUD

[ ] tests written</br>
[ ] done

User Story 19, Resort Delete 

As a visitor
When I visit a resort show page
Then I see a link to delete the resort
When I click the link "Delete Resort"
Then a 'DELETE' request is sent to '/resorts/:id',
the resort is deleted, and all lift records are deleted
and I am redirected to the resort index page where I no longer see this resort

[ ] tests written</br>
[ ] done

User Story 20, Lift Delete 

As a visitor
When I visit a lift show page
Then I see a link to delete the lift "Delete Lift"
When I click the link
Then a 'DELETE' request is sent to '/lifts/:id',
the lift is deleted,
and I am redirected to the lift index page where I no longer see this lift

### ActiveRecord

[ ] tests written</br>
[ ] done

User Story 21, Display Records Over a Given Threshold 

As a visitor
When I visit the Resort's Lifts Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
Then I am brought back to the current index page with only the records that meet that threshold shown.

### Usability

[ ] tests written</br>
[ ] done

User Story 22, Resort Delete From Resort Index Page 

As a visitor
When I visit the resort index page
Next to every resort, I see a link to delete that resort
When I click the link
I am returned to the Resort Index Page where I no longer see that resort

[ ] tests written</br>
[ ] done

User Story 23, Lift Delete From Lifts Index Page 

As a visitor
When I visit the `lifts` index page or a resort `lifts` index page
Next to every lift, I see a link to delete that lift
When I click the link
I should be taken to the `lifts` index page where I no longer see that lift

## Extensions

[ ] tests written
[ ] done

Extension 1: Sort Resortss by Number of Lifts 

As a visitor
When I visit the Resorts Index Page
Then I see a link to sort resorts by the number of `lifts` they have
When I click on the link
I'm taken back to the Resort Index Page where I see all of the resorts in order of their count of `lifts` (highest to lowest) And, I see the number of lifts next to each resort name

[ ] tests written
[ ] done

Extension 2: Search by name (exact match)

As a visitor
When I visit an index page ('/resorts') or ('/lifts')
Then I see a text box to filter results by keyword
When I type in a keyword that is an exact match of one or more of my records and press the Search button
Then I only see records that are an exact match returned on the page

[ ] tests written
[ ] done

Extension 3: Search by name (partial match)

As a visitor
When I visit an index page ('/resorts') or ('/lifts')
Then I see a text box to filter results by keyword
When I type in a keyword that is an partial match of one or more of my records and press the Search button
Then I only see records that are an partial match returned on the page

This functionality should be separate from your exact match functionality.