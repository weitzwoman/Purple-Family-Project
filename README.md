# _Purple Family Project_

#### _Purple Family Project is a dynamic survey to compare user to user answers, spurring ideas of common ground for political beliefs. Designed by Tracie Weitzman with inspiration from Stephanie Keske. Project written for Epicodus Capstone Independent Project 3/9/2017_

#### By _**Tracie Weitzman**_

## Specifications

#### 1. Users can create a User Profile and login.

#### 2. Users can take a survey about their political and civic beliefs.

#### 3. Users can enter other User email addresses they'd like to compare survey results with. If both Users have entered each other's email addresses, survey comparison will show on application.

#### 4. Users with admin privileges can add, edit, and delete survey questions.

#### 5. (To do) Users can send emails to friends or family they'd like to invite to take the survey.

#### 6. (To do) Users without profiles can view About page.

#### 7. (To do) Users can view Next Steps section on political communication on Answers index when survey comparison is shown.

## Setup/Installation Requirements

* _In the Command Line, run:_
```
git clone https://github.com/weitzwoman/purple-family-project
cd purple-family-project
bundle install
postgres
```

* _In a separate Command Line, run:_
```
rails db:setup
rails s
```
* _Then, in any modern browser, open:_
```
localhost:3000
```

## Known Bugs

#### 1. Survey Questions currently not seeded to database.
#### 2. Validations needed for form_complete, so Users can't submit survey without answering all questions.
#### 3. Alert message needed if other user email is entered when that other user hasn't completed the survey.

## Support and contact details

_Contact me on Github at [weitzwoman](https://github.com/weitzwoman)_

## Technologies Used

* _Ruby version 2.2.3_
  * _Rails 5.0.1_
* _Postgres_
  * _ActiveRecord_
* _HTML_
* _SCSS_
  * _Bootstrap_

### License

Purple Family Project is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

Purple Family Project is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with the Purple Family Project. If not, see http://www.gnu.org/licenses/.

Copyright (c) 2017 **Tracie Weitzman**
