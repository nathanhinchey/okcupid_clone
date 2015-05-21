# AlrightEros

[Heroku link][heroku]

##TODOs

####Questions:
* [ ] Make a question loop:
  - [x] Add "new question" link to index
  - [ ] Before you can click "submit", it verifies validity
  - [x] If there are no errors, display the next question
  - [ ] Modal view for answering on another's profile

####Profiles:
* [x] Add answered questions view
  - [ ] Paginate
* [ ] Add more sections

####Sign-up:
* [ ] Make profile creation and sign-up more connected
* [ ] OAuth

####Add edit views
* [ ] Profiles
* [ ] Question answers

####Search
* [ ] Make search function
  - [ ] Filter by age
  - [ ] Filter by looking-for
  - [ ] Filter by some other category

----
###Stretch goals:
* [ ] add "acceptable answers" to question answers
  - [ ] figure out how best to store them (join table?)
  - [ ] add them to answer form


* [ ] make matching algorithm work
  - [ ] *back end*: compare answers to each other
  - [ ] *front end*: display match percentages

* [ ] Search

[heroku]: http://alrighteros.herokuapp.com

----
## Minimum Viable Product
This site will be a clone of OkCupid built on Rails and using Backbone.

###MVP Proposal:
- [x] **Create accounts**
  * [x] *Models*
  * [x] *Controllers*
- [x] **Create sessions (log in)**
  * [x] *Models*
  * [x] *Controllers*
- [ ] **Profile form**
  * [x] *create a new profiles*
  * [ ] *edit an existing profile*
  * [x] *use "summary" text area*
  * [ ] *use "looking for" drop down*
  * [ ] *use "gender" drop down*
  * [x] *use "birthday" calendar field*
    * [ ] *update to date dropdowns*
  * [ ] *upload photo*
- [ ] **View profiles**
  * [ ] *nice looking show view*
  * [x] *partials for index view*
- [x] **Answer questions**
  * [x] *Users can write questions*
  * [x] *Users can give answers to questions*
  * [x] *Users can view other users' answers to questions*
- [ ] **Search Users**
  * [ ] *by gender*
  * [ ] *by age*
  * [ ] *orientation*
  * [ ] *all three in combination*


## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication (~1 day)
I will implement user authentication in Rails based on the practices learned at App Academy. By the end of this phase, users will be able to create accounts and log in using a simple text form in a Rails view. The most important part of this phase will be pushing the app to Heroku and ensuring that everything works before moving on to phase 2.

[Details][phase-one]

### Phase 2: Create and view profiles (~1 day)
I will implement a basic text interface for updating user profiles. Users will be prompted to create a profile upon creating their account. Users who have not created a profile will only be able to view the 'new profile' page after logging in until completing their profile. Create Backbone views for profiles.

[Details][phase-two]

### Phase 3: Answering Questions (~1 day)
I will implement a question answer form that displays a questions and their corresponding answer choices, and lets logged in users create new QuestionAnswers. Also allows users to edit their existing QuestionAnswers.

[Details][phase-three]

### Phase 4: Editing and User Profiles and Questions (~2 days)
I'll build all the connections for questions and profiles between Rails and Backbone. Users can view question answers and other users' profiles in a mostly single page JavaScript application.

[Details][phase-four]

### Phase 5: Searching for Users (~2 days)
I'll integrate a search function that allows users to search for other users by age, gender, and orientation.

[Details][phase-five]

### Phase 6: Uploading Images (~1 day)
I'll allow users to upload images. I don't know how to do that yet. I'll figure it out and implement it. I assume that there are libraries for that.

[Details][phase-six]

### Bonus Features (TBD)
- [ ] Matching algorithm to compare user question answers
- [ ] Like feature for liking profiles
- [ ] Facebook Login option
- [ ] User feed

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase6.md
