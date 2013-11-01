#!/bin/bash -ex
tag=1.2.0-rc.3
dst=src/main/resources/org/kohsuke/stapler/angularjs
wget -O $dst/angular.js     https://ajax.googleapis.com/ajax/libs/angularjs/$tag/angular.js
wget -O $dst/angular.min.js https://ajax.googleapis.com/ajax/libs/angularjs/$tag/angular.min.js
mvn -B release:update-versions -DdevelopmentVersion=$tag-1-SNAPSHOT

