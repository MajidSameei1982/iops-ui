Windows Setup Steps:
====================

NodeJS (https://nodejs.org/en/)
-------------------------------
* Download and install NodeJS
* Open a new command prompt and type node and 'Enter' - you will see a '>' prompt if everything installed correctly. Ctrl-C twice to exit.


Git (https://git-scm.com/)
--------------------------
* Download and install Git
* Clone the project from the git bash console with the following command (choose a top level path first):
    git clone git@github.com:jbtc/iops-ui.git
or
    git clone https://github.com/jbtc/iops-ui.git
* Navigate to the new iops-ui path and you should see (master) at the end of the prompt. This tells you which branch you're on. 
* Create and checkout a new branch to experiment with:
    git checkout -b yourbranchname
* execute 'npm install' - this should download and install all of the necessary node packages for the project.


Console (https://conemu.github.io/)
-----------------------------------
* This is optional - you can use the default command prompt and git bash for node and git commands, respectively
* Install this and it lets you open multiple tabs, each with a different shell (e.g. windows console, node console, git bash, etc.)


Grunt - script task runner
--------------------------
* From a console, enter the command:
    npm install -g grunt-cli


Ruby - required for Sass compilation into CSS
---------------------------------------------
* Download and install from http://rubyinstaller.org/
* Be sure to install Ruby executables in the PATH
* Open a new git bash and enter:
    gem install sass


Sublime Text - text editor that can handle all file formats
-----------------------------------------------------------
* http://www.sublimetext.com/2
* Install Package Control:
    https://packagecontrol.io/installation
* Install packages for:
    Coffeescript
    ECO
    Sass


Starting Development
--------------------
* Open a console, navigate to the project directory and execute:
    grunt dev
