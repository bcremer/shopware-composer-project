# Composer template for Shopware projects

## Warning

This is a proof of concept and not production ready.

## Installation

```
composer create-project bcremer/shopware-composer-project my_project_name --no-interaction --stability=dev
```

During installation `.env.example` is copied to `.env`.
Please configure database credentials here.

```bash
$ ./app/install.sh
$ ./app/create_symlinks.sh
```

## Updating Shopware

Update the version number of shopware/shopware composer.json.
Run composer update shopware/shopware.

## Plugins

Plugins are gettings installed into `Plugins/`.

### Prepare plugins for composer installation

Given you have a plugin called `SwagTestMe` (`Shopware_Plugins_Frontend_SwagTestMe_Bootstrap`) add your dependencies in your plugins `composer.json` file.
Also set the `type` to `shopware-frontend-plugin`.


```
{
  "name": "swag/TestMe",
  "type": "shopware-frontend-plugin",
  "require": {
    "domnikl/statsd": "^2.3.0",
    "psy/psysh": "^0.6"
  }
}
```

