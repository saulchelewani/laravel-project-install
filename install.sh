# create .env file
cp .env.example .env

# open .env to edit env variables 
vi .env

# install the project with composer
composer install

# generate encription key 
php artisan key:generate

# migrate the database
php artisan migrate 
