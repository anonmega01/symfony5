# Symfony 5.4

# https://github.com/iifast2/symfony5-laposte

<br/><br/>
> Status: MAINTAINED 
> 
> Requires: PHP 7.2.5 or higher
> 
> Latest patch version: 5.4.16
> 
> Released on: November 2021
> 
> End of bug fixes: November 2024
> 
> End of security fixes: November 2025

<br/><br/>

# Installation 

## symfony 5 documentation : 

https://symfony.com/doc/5.4/index.html



## Installing & Setting up the Symfony Framework : 

https://symfony.com/doc/5.4/setup.html


<br/>
<br/>



# my installation : 

### Donwload Xampp 7.4.33 / PHP 7.4.33 : 

https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.33/xampp-windows-x64-7.4.33-0-VC15-installer.exe

cmd : 

```
php --version 
```



> PHP 7.4.33 (cli) (built: Nov  2 2022 16:00:55) ( ZTS Visual C++ 2017 x64 )
> 
> Copyright (c) The PHP Group
> 
> Zend Engine v3.4.0, Copyright (c) Zend Technologies
 
 
<br/>
<br/>




### install composer ( for all users ): 

https://getcomposer.org/download/

https://getcomposer.org/Composer-Setup.exe


cmd : 

```
composer
```


```
cd projects/

git clone https://github.com/iifast2/symfony5-laposte.git
```



<br/>
<br/>



## Requirements for Running Symfony : 

https://symfony.com/doc/4.1/reference/requirements.html


cmd : 

```
cd your-project/

composer require symfony/requirements-checker

composer remove symfony/requirements-checker
```



https://github.com/symfony/flex/issues/909


https://stackoverflow.com/a/72329962/10216101



```
cd your-project/

composer update symfony/flex --no-plugins --no-scripts
```
<br/><br/>


```

D:\mywebsite\symfonyprojects\symfony5-laposte\appformation>composer
symfony/runtime contains a Composer plugin which is currently not in your allow-plugins config. See https://getcomposer.org/allow-plugins
Do you trust "symfony/runtime" to execute code and wish to enable it now? (writes "allow-plugins" to composer.json) [y,n,d,?] y
   ______
  / ____/___  ____ ___  ____  ____  ________  _____
 / /   / __ \/ __ `__ \/ __ \/ __ \/ ___/ _ \/ ___/
/ /___/ /_/ / / / / / / /_/ / /_/ (__  )  __/ /
\____/\____/_/ /_/ /_/ .___/\____/____/\___/_/
                    /_/
Composer version 2.5.1 2022-12-22 15:33:54





____________________________

D:\mywebsite\symfonyprojects\symfony5-laposte\appformation>php bin/console server:run
PHP Fatal error:  Uncaught LogicException: Symfony Runtime is missing. Try running "composer require symfony/runtime". in D:\mywebsite\symfonyprojects\symfony5-laposte\appformation\bin\console:8
Stack trace:
#0 {main}
  thrown in D:\mywebsite\symfonyprojects\symfony5-laposte\appformation\bin\console on line 8

Fatal error: Uncaught LogicException: Symfony Runtime is missing. Try running "composer require symfony/runtime". in D:\mywebsite\symfonyprojects\symfony5-laposte\appformation\bin\console:8
Stack trace:
#0 {main}
  thrown in D:\mywebsite\symfonyprojects\symfony5-laposte\appformation\bin\console on line 8

D:\mywebsite\symfonyprojects\symfony5-laposte\appformation>composer require symfony/runtime



```



<br/>
<br/>
<br/>


# Install Symfony CLI

https://symfony.com/download#step-1-install-symfony-cli

https://github.com/symfony-cli/symfony-cli/releases/download/v5.4.20/symfony-cli_windows_amd64.zip

https://stackoverflow.com/a/71198465/10216101

<br/>


Open powershell from start menu then paste this code to install it (I got it from scoop website) : 

Open a PowerShell terminal (version 5.1 or later) and run:

```
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

Then in powershell execute this command : 

```
scoop install symfony-cli
```

this is the current recommended method to install symfony cli on windows

After that check it by calling this command: 

```
symfony -v
```


___



```
symfony check:requirements
```



```

C:\xampp\htdocs\symfony5-laposte\appformation>symfony check:requirements

Symfony Requirements Checker
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

> PHP is using the following php.ini file:
C:\xampp\php\php.ini

> Checking Symfony requirements:

....................WWW......W..


 [OK]
 Your system is ready to run Symfony projects


Optional recommendations to improve your setup
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 * intl extension should be available
   > Install and enable the intl extension (used for validators).

 * a PHP accelerator should be installed
   > Install and/or enable a PHP accelerator (highly recommended).

 * realpath_cache_size should be at least 5M in php.ini
   > Setting "realpath_cache_size" to e.g. "5242880" or "5M" in
   > php.ini* may improve performance on Windows significantly in some
   > cases.

 * "post_max_size" should be greater than "upload_max_filesize".
   > Set "post_max_size" to be greater than "upload_max_filesize".


Note  The command console can use a different php.ini file
~~~~  than the one used by your web server.
      Please check that both the console and the web server
      are using the same PHP version and configuration.


C:\xampp\htdocs\symfony5-laposte\appformation>

```

---

# Importing / Creating our database 
For this app we will use xampp or wamp server's phpMyAdmin SQL database ( mysql databse ) : 


## Configuring 
https://symfony.com/doc/current/doctrine.html#configuring-the-database

The database connection information is stored as an environment variable called ```DATABASE_URL```. For development, you can find and customize this inside ```.env``` :

### ```.env``` (or override DATABASE_URL in ```.env.local``` to avoid committing your changes)

### customize this line!

```
DATABASE_URL="mysql://db_user:db_password@127.0.0.1:3306/db_name?serverVersion=5.7"
```



<br/>

---
---

<br/><br/><br/>

# Run your app : 


* if you are using wampp : 

```
cd C:\wamp64\www\your-project
```
or 

* if you are using xampp : 
```
cd C:\xampp\htdocs\your-project
```
### <b> then to run the application  <b/>
run one of these commands to start your app:
   
```
Symfony serve

symfony server:start   
```

   





