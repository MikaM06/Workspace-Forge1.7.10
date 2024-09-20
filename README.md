*** HOW TO INSTALL ***
For Mod Users:

Download the latest installer from http://files.minecraftforge.net and follow instructions given by the installer.


For Mod Devs:

Download the latest Forge source distribution from http://files.minecraftforge.net and unzip it to a folder.
Open a command prompt, navigate to the directory where you unzipped the Forge sources, and run:
If you have Gradle: gradle setupDevWorkspace
If you DO NOT have Gradle installed:


Command:

./gradlew task
./gradlew setupDevWorkspace
./gradlew idea or eclipse

Please note that for idea gradle you need gradle 4.5.


For Contributors: (Note: This assumes you have Gradle installed. If you don't, use ./gradlew(.bat) instead of gradle.

Clone this repository to a folder. 
Open a command prompt and navigate to the folder where you cloned this repo.
Run gradle setupForge to setup your development environment.

To use Eclipse, point your Eclipse workspace at the eclipse folder inside the repo.


Requirements (for both mod devs and contributors):
  You must have a JDK installed and accessible.
  If you do not wish to use the gradle wrapper, you can install Gradle from http://www.gradle.org/ .