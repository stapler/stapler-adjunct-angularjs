#!/bin/bash -ex
tag=1.0.8
dst=src/main/resources/org/kohsuke/stapler/angularjs
wget -O $dst/angular.js     https://ajax.googleapis.com/ajax/libs/angularjs/$tag/angular.js
wget -O $dst/angular.min.js https://ajax.googleapis.com/ajax/libs/angularjs/$tag/angular.min.js
mvn -B release:update-versions -DdevelopmentVersion=$tag-1-SNAPSHOT

