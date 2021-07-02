Hello Laravel Sample Work is presented....

This is just blog to peresent team and brands and so on...


<h2>Windows users:</h2>

Download wamp: http://www.wampserver.com/en/
Download and extract cmder mini: https://github.com/cmderdev/cmder/releases/download/v1.1.4.1/cmder_mini.zip
Update windows environment variable path to point to your php install folder (inside wamp installation dir) (here is how you can do this http://stackoverflow.com/questions/17727436/how-to-properly-set-php-environment-variable-to-run-commands-in-git-bash)
cmder will be refered as console

<h2>Mac Os, Ubuntu and windows users continue here:</h2>

Create a database locally named homestead utf8_general_ci
Download composer https://getcomposer.org/download/
Pull Laravel/php project from git provider.
<p>Rename .env.example file to .envinside your project root and fill the database information. (windows wont let you do it, so you have to open your console cd your project root directory and run mv .env.example .env )</p>
Open the console and cd your project root directory
<p>Run composer install or php composer.phar install</p>
<p>Run php artisan key:generate</p>
<p>Run php artisan migrate</p>
<p>Run php artisan db:seed to run seeders, if any.</p>
<p>Run php artisan serve</p>
#####You can now access your project at localhost:8000 :)

If for some reason your project stop working do these:
composer install
php artisan migrate
