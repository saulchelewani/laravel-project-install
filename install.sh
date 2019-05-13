# create .env file
cp .env.example .env

# open .env to edit env variables 
vi .env

# install the project with composer
composer install

# generate encription key 
php artisan key:generate

# install Laravel Passport
if grep -q 'laravel/passport' 'composer.json'; then
    php artisan passport:install
fi

# migrate and seed the database
php artisan migrate:fresh --seed
