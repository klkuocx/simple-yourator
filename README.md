# Simple Yourator
A clone web application of Yourator website

![Simple Yourator](https://i.imgur.com/CRJDHtl.png)

### Demo
[Heroku App](https://kl-simple-yourator.herokuapp.com/)

## Features
### AS a user
- Home page with random recommended companies and jobs
- Companies List
- JOb List with all opened jobs
- Company detail page 
- Job detail page

### AS an admin
- Company admin page to manage own company and jobs

## Environment SetUp
1. [ruby](https://www.ruby-lang.org/en/) 3.0.0
2. [rails](https://rubyonrails.org/) 6.1.3
3. [MySQL](https://www.mysql.com/) 8.0.22

## Installation and Execution
### Activate Project
1. Clone this git to local
```
[~] $ git clone https://github.com/klkuocx/simple-yourator.git
```

2. Get into the directory
```
[~] $ cd simple-yourator
```

3. Install packages
```
[~/simple-yourator] $ bundle install
```

4. Setup MySQL, db model and seeds
```
[~/simple-yourator] $ rake db:create
[~/simple-yourator] $ rake db:migrate
[~/simple-yourator] $ rake db:seed
```

4. Run the project
```
[~/simple-yourator] $ rails s
```
