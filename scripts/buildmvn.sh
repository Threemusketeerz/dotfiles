#! /bin/bash

if ! [ -x "$(command -v mvn)" ]; then
   echo "Please install maven." 
   exit 1
fi

defaultArchetype="maven-archetype-quickstart"

read -p "App group ID: " groupId
read -p "App artifact ID: " artifactId
read -p "Archetype [maven-archetype-quickstart]: " archetype

if [ 0 -eq ${#archetype} ]; then
    archetype=$defaultArchetype
fi

mvn -B archetype:generate -DgroupId=$groupId -DartifactId=$artifactId -DarchetypeArtifactId=$archetype

