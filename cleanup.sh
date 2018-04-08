#!/bin/bash

echo " "
echo " "
echo "Cleaning up git sub git repos ..."
echo " "
echo " "


cd Clima-iOS11
git rm -f --cached .
rm -rf .git
cd ../

cd Destini-iOS11
git rm -rf --cached .
rm -rf .git
cd ../

cd Flash-Chat-iOS11
git rm -rf --cached .
rm -rf .git
cd ../

cd "Hello World"
git rm -rf --cached .
rm -rf .git
cd ../

cd I-Am-Poor-iOS11
git rm -rf --cached .
rm -rf .git
cd ../

cd Quizzler-iOS11
git rm -rf --cached .
rm -rf .git
cd ../

cd Xylophone-iOS11 
git rm -rf --cached .
rm -rf .git
cd ../
