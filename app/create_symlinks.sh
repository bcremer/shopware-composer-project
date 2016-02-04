#!/bin/bash

rm -rf  web/themes/Backend/ExtJs/backend
mkdir web/themes/Backend/ExtJs/backend -p
ln -s ../../../../../vendor/shopware/shopware/themes/Backend/ExtJs/backend/_resources web/themes/Backend/ExtJs/backend/_resources

rm -rf  web/engine/Library
mkdir web/engine/Library -p
ln -s ../../../vendor/shopware/shopware/engine/Library/CodeMirror web/engine/Library/CodeMirror
ln -s ../../../vendor/shopware/shopware/engine/Library/ExtJs  web/engine/Library/ExtJs
ln -s ../../../vendor/shopware/shopware/engine/Library/TinyMce web/engine/Library/TinyMce

rm -rf web/themes/Frontend/Responsive/frontend/
mkdir -p web/themes/Frontend/Responsive/frontend/
ln -s ../../../../../vendor/shopware/shopware/themes/Frontend/Responsive/frontend/_public web/themes/Frontend/Responsive/frontend/_public
