# Asset Creation Project
Base unity project for creating beat saber mod assets (sabers, notes, platforms, etc.)

## Installation
**Git needs to be installed on your machine in order to use this project**  
You can download git from [here](https://git-scm.com/download/win).  
Alternatively you can download the portable version [here](https://github.com/git-for-windows/git/releases).  
In both cases make sure the path to the git executable is in your path environment variable. If not [do it yourself](https://docs.microsoft.com/en-us/previous-versions/office/developer/sharepoint-2010/ee537574(v=office.14)#to-add-a-path-to-the-path-environment-variable).  
After installing git make sure to restart Unity **and** Unity Hub

*The project was made with Unity 2019.3.15 but you can open it in a newer version and just accept the prompt Unity gives you to upgrade.*

1) [Download](https://github.com/ToniMacaroni/AssetCreationProject/archive/refs/heads/main.zip) and unzip the project in any folder.
2) Open the project in unity hub.

## Installation without Git (not recommended)
If you don't want or can't install git you can also manually set everything up.  
Keep in mind you loose the ability to update from within the Project by using this approach.

1) [Download](https://github.com/ToniMacaroni/AssetCreationProject/archive/refs/heads/main.zip) and unzip the project in any folder.
2) Open the project in Unity Hub (when unity tells you that git isn't installed just click continue).
3) Download the desired toolkit (for example the [SaberToolkit](https://github.com/ToniMacaroni/SaberToolkit/archive/refs/heads/main.zip)) and unzip it in any folder.
4) In the project go to Window->Package Manager
5) In the top left corner of the Package Manager click the "+" and "Add package from disk"
6) Navigate to the unzipped toolkit folder and select the "Package.json" file
