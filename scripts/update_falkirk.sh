#!/bin/bash
cd falkirk/Naiad
git pull
xbuild /p:Configuration="MonoDebug"
xbuild /p:Configuration="MonoRelease"
