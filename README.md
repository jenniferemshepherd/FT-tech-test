# Cloud Engineer Technical Exercise

User Stories
_____________

```As a User
So that I can share my experience of the ft website with their developers
I would like to leave a rating

As an external User
So that I can leave my rating even though I don't work at the ft
I would like to leave my rating on a website hosted in the cloud

As an ft employee
So that I can make use of the ratings data
I would like to store it```


```As a User
So that I can compare my experience with others' after I have left a rating
I would like to view all of the ratings left
```

##Process

* Having diagrammed the simple app and thought about all the things at play, I decided to use Ruby.  It was important to me that I test-drove the app and I feel most confident and experienced doing this in Ruby.

* First I wrote out User Stories and compared them to the brief, to ensure I had fully grasped the expectations.  It was important to me to hit MVP so I focussed on the first requirements, planning to extend later with the optional extras.

* I diagrammed the action that would take place in the app and where I expected information to be sent during user interaction.

* I test drove the homepage and refactored it into views

* Rubocop was installed to ensure I didn't overlook any untidy code

* The diagram of app architecture directed me in TDDing the actual rating buttons, and what pressing them would do (submit a form)

* I knew I needed to have the ratings stored in a database, so I'd need a Rating model.  I TDD'd this too.
