#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o pipefail

# Set magic variables for current FILE & DIR
declare -r __FILE__=$(readlink -f ${BASH_SOURCE[0]})
declare -r __DIR__=$(dirname $__FILE__)

# Source .env file
if [ -f $__DIR__/../.env ]; then
    echo Found .env
    source $__DIR__/../.env
fi

echo "Setup Database"
$__DIR__/../bin/console sw:setup --steps=drop,create,setup

if [ $IMPORT_DEMODATA = true ] ; then
    echo "Import Demodata"
    $__DIR__/../bin/console sw:setup --steps=importDemodata
fi

echo "Setup Shop Configuration"
$__DIR__/../bin/console sw:setup  --steps=setupShop --host="$SHOP_HOST" --path="$SHOP_PATH"

echo "Import Snippets"
$__DIR__/../bin/console sw:snippets:to:db --include-plugins

echo "Init Themes"
$__DIR__/../bin/console sw:theme:initialize

echo "Disable Firstrun Wizard"
$__DIR__/../bin/console sw:firstrunwizard:disable

echo "Create admin user"
$__DIR__/../bin/console sw:create:admin --name="$ADMIN_NAME" --email="$ADMIN_EMAIL" --username="$ADMIN_USERNAME" --password="$ADMIN_PASSWORD" -n


