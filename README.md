# README

- Ruby version: 2.3.1
- Rails version: 5.0
- Database: MySQL

# RULES

- Your car wash accepts cars and trucks.

- You charge $5 for cars.

- You charge $10 for trucks.

- Your car wash charges $2 extra if the truck has mud in the bed.

- Your car wash does not accept trucks with the bed let down.

- If the vehicle comes in a second time, they get 50% off.

- If the license plate equals 1111111, the vehicle is stolen and does not get a car wash.


# ROUTES

- root 'washes#index'
-  get 'washes/new', to: 'washes#new', as: :new_washes
-  post 'washes', to: 'washes#create'
