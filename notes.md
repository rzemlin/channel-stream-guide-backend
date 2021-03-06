PART 1: Planning and Building a Rails API
BEFORE YOU CODE

 1. Check project requirements in JavaScript READMEs
 2. Ideate! What do you want to build?
choose a domain you're familiar with!
choose a domain you care about
 3. Wireframing & User Stories
Write down your models, their attributes, and their associations
"As a user, I can ....."
"A user should be able to ....."
What does your app do?
 4. Design your MVP = 'Minimum Viable Product' vs. what are my 'stretch goals'
Stretch goals - bonus features you want but don't need
NOW WE'RE READY FOR PROJECT SET UP

 5. Generate new Rails API using rails new <my_app_name> --database=postgresql --api
(Replace <my_app_name> with the actual name of your project)
 6. Create github repo
 7. Create a new branch for building out models. This way you can always go back to the fresh API.
NOTE: It is best practice to always create a new branch when working on a new feature/edit to your code. Your master branch should only have working code. Debug in a branch, not in master.
NOW WE'RE READY TO CODE (BUT JUST OUR MODELS — NO CONTROLLERS OR SERIALIZERS YET)

NOTE: Remember to VERTICALLY build your MVP! This means building out one model/feature at a time. DO NOT build out all the models and controllers at the same time. This is the easiest way to get lost in your project very early. Read more about this here.

 8. Build your models
Migrations
Model classes
Associations
 9. Test your models and associations in the console
Create some seed data
Adjust migrations as needed
PART 2: Routes, Controllers, Serializers
 1. Name spaced routes
 2. Controllers rendering JSON based on routes
 3. Fast JSON Serializer
Bonus
 Leverage a CSS framework to improve the styling of your application
Easiest to implement: Bulma
Most popular: Bootstrap
Also good: Semantic UI
Not bootstrap: Materialize
Confirm
 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message