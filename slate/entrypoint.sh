#!/bin/bash

if [ -z "$1" ]; then
	echo "Deleting old 'build' folder"
	rm -rf source/build

	echo "Building static html doc to 'build' folder"
	bundle exec middleman build --clean

	echo "Copying result into 'build' folder"
	cp -r build source/
elif [ "$1" = "dev" ]; then
	echo "Serving live doc at http://127.0.0.1:4567"
	bundle exec middleman server

else
	echo "Unknown argument '$1', will do nothing and exit"
	echo "Accepted optional argument: 'dev'"
fi
