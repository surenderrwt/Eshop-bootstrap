# Eshop-Bootstrap
Bootstrap based Ecommerce portal where users can purchase Electronic Soft Items (PDFs, PNGs, JPGs, Docs ) based in Rails 6

# Database > PostgreSQL
* gem 'pg', '>= 0.18', '< 2.0'

# Admin Login Details
* admin@example.com
* password
  
# Resources
* User
* Category
* Product

# Additional Gems
* gem 'activeadmin'
* gem 'devise'
* gem 'rspec-rails'
* gem 'capybara'
* gem 'shoulda-matchers'
* gem 'database_cleaner'
* gem 'factory_girl_rails'

# Database Structure
 ![alt text](https://github.com/surenderrwt/Eshop-bootstrap/blob/master/Database_scheme.png?raw=true)

# Special commands
* rails g active_admin:install
* rails db:migrate
* rails db:seed
* rails server
* rails generate active_admin:resource User
* rails generate active_admin:resource Category
* rails generate active_admin:resource Product
* rails generate active_admin:resource Order
* rails generate devise User
* rails db:migrate

# Special Commands for Git
* git init
* git status
* git branch
* git remote add origin https://github.com/user/repo.git
* git checkout -b branch_name
* git staus
* git add .
* git commit -am "Some comment"
* git push --set-upstream origin branch_name
* git checkout master
* git merge branch_name
* git push origin master
* git status