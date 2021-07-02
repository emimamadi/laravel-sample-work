<h5>Hello </h5>
<h5>Laravel Sample Work is presented....<h5>

<p>This is just blog to peresent team and brands and so on...</p>


<h2>Windows users:</h2>

Download wamp: http://www.wampserver.com/en/
Download and extract cmder mini: https://github.com/cmderdev/cmder/releases/download/v1.1.4.1/cmder_mini.zip
Update windows environment variable path to point to your php install folder (inside wamp installation dir) (here is how you can do this http://stackoverflow.com/questions/17727436/how-to-properly-set-php-environment-variable-to-run-commands-in-git-bash)
cmder will be refered as console

<h2>Mac Os, Ubuntu and windows users continue here:</h2>

<p>Create a database locally named homestead utf8_general_ci</p>
<p>Download composer https://getcomposer.org/download/</p>
<p>Pull Laravel/php project from git provider.</p>
<p>Rename .env.example file to .envinside your project root and fill the database information. (windows wont let you do it, so you have to open your console cd your project root directory and run mv .env.example .env )</p>
<p>Open the console and cd your project root directory</p>
<p>Run composer install or php composer.phar install</p>
<p>Run php artisan key:generate</p>
<p>Run php artisan migrate</p>
<p>Run php artisan db:seed to run seeders, if any.</p>
<p>Run php artisan serve</p>
<p>You can now access your project at localhost:8000 :)</p>

If for some reason your project stop working do these:
<p>composer install</p>
<p>php artisan migrate</p>
