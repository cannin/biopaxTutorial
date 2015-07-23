<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Contents**

- [Paxtools Quickstart](#paxtools-quickstart)
  - [Download Setups](#download-setups)
  - [Installation](#installation)
  - [Make template Paxtools project.](#make-template-paxtools-project)
  - [Project will be in folder "test". Build the project with following commands:](#project-will-be-in-folder-test-build-the-project-with-following-commands)
    - [Install missing dependencies and compile/build project](#install-missing-dependencies-and-compilebuild-project)
    - [Generate a single file will all necessary dependencies](#generate-a-single-file-will-all-necessary-dependencies)
  - [Run example project](#run-example-project)
  - [Examine OWL file using Protege](#examine-owl-file-using-protege)
- [ChiBE: Chisio BioPAX Editor Quickstart](#chibe-chisio-biopax-editor-quickstart)
  - [Project Website](#project-website)
  - [Download](#download)
    - [Link for OSX:  http://www.cs.bilkent.edu.tr/~ivis/chibe/chibe-2.2.0-setup-macosx-x86.zip](#link-for-osx--httpwwwcsbilkentedutrivischibechibe-220-setup-macosx-x86zip)
  - [Installation](#installation-1)
  - [Usage](#usage)
    - [Multiple Files/Pathways in the Same Session](#multiple-filespathways-in-the-same-session)
      - [Visualizing](#visualizing)
  - [Getting Additional Pathways](#getting-additional-pathways)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Paxtools Quickstart

## Download Setups

* IntelliJ Community Edition (Java Editor): https://www.jetbrains.com/idea/download/
* Maven (Java Dependency Major): http://maven.apache.org/download.cgi
* Protege (OWL Viewer, BioPAX is in OWL-formatted): http://protege.stanford.edu/products.php#desktop-protege

## Installation

* Install IntelliJ with installer; install Java if prompted.
* Protege can be run by clicking on the “run.command” file inside the downloaded archive
* Maven 

```
$ tar -xvf apache-maven-3.2.5-bin.tar.gz
$ sudo mv apache-maven-3.2.5 /usr/local

$ nano ~/.bash_profile

#Add below lines in the .bash_profile
export M2_HOME=/usr/local/apache-maven-3.2.5
export PATH=$PATH:$M2_HOME/bin
#Save and quit

$ source .bash_profile 
```

If it worked you should have output with the following: 

```
$ mvn --version
```

## Make template Paxtools project. 

The project outputs members of all reactions in a pathway and any external database references for them to screen and a file. NOTE: Several files will be downloaded: 

mvn archetype:generate -DarchetypeRepository=http://www.biopax.org/m2repo/snapshots/ -DarchetypeGroupId=org.biopax.paxtools -DarchetypeArtifactId=paxtools-archetype -DarchetypeVersion=4.3.1-SNAPSHOT -DgroupId=com.example.test -DartifactId=test -Dversion=1.0-SNAPSHOT

## Project will be in folder "test". Build the project with following commands: 

$ cd test

### Install missing dependencies and compile/build project
$ mvn clean install

### Generate a single file will all necessary dependencies
$ mvn assembly:single

## Run example project
$ java -jar ./target/example-single.jar

## Examine OWL file using Protege

Sample BioPAX OWL files are located in the src/main/resources/ of example project. After loading an OWL file, click the "Entities" tab at the top, and in the bottom left panel, click on "Individuals by type". You'll be able to see the classes of objects that exist in the BioPAX ontology schema. The panel to the top right will show you definitions for a BioPAX class. The bottom right panel will show you properties (and the values) for a given BioPAX entity instance. 

# ChiBE: Chisio BioPAX Editor Quickstart

## Project Website

https://code.google.com/p/chibe/

## Download 
### Link for OSX:  http://www.cs.bilkent.edu.tr/~ivis/chibe/chibe-2.2.0-setup-macosx-x86.zip

## Installation 
Unzip and in the command line (in the unzipped directory), run: 

./ChiBE.sh

## Usage 

You can open up the sample OWL files (in resources/) from the the example Paxtools project using ChiBE. Clicking on nodes or edges gives you additional information. 

### Multiple Files/Pathways in the Same Session
When multiple files/pathways (models) are loaded they are merged. If the model is saved (Model -> Save (as)) the merged network is exported. The currently loaded model can be discarded (Model -> Close).

#### Visualizing
If you have multiple pathways exist in the file or loaded in the session, you will be asked to "Select pathways to display", just select whatever you would like to see and click "OK". 

## Getting Additional Pathways

ChiBE has access to an aggregated dataset known as Pathway Commons and can query Pathway Commons for specific content:

Query -> Pathway Commons (Level 3) -> Pathways with Keyword -> Enter "Glycolysis" (for example) 

Select your pathway of interest. 
