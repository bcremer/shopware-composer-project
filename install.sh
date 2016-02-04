#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o pipefail

# Set magic variables for current FILE & DIR
declare -r __FILE__=$(readlink -f ${BASH_SOURCE[0]})
declare -r __DIR__=$(dirname $__FILE__)

echo "Setup Database"
$__DIR__/../build/setupDatabase.php --steps=drop,create,setup,importDemodata,setupShop --host="shopware.local" --path=""

echo "Generate Attributes"
$__DIR__/../bin/console sw:generate:attributes

echo "Import Snippets"
$__DIR__/../bin/console sw:snippets:to:db --include-plugins

echo "Init Themes"
$__DIR__/../bin/console sw:theme:initialize

echo "Disable Firstrun Wizard"
$__DIR__/../bin/console sw:firstrunwizard:disable

echo "Create admin user"
$__DIR__/../bin/console sw:create:admin --name="Demo user" --email="demo@example.com" --username="demo" --password="demo" -n
