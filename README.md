# Composer template for Shopware projects

## Installation

```
composer create-project bcremer/shopware-composer-project my_project_name --no-interaction --stability=dev
```

During installation `.env.example` is copied to `.env`.
Please configure database credentials here.

```bash
$ ./app/install.sh
```

## Updating Shopware

Update the version number of shopware/shopware composer.json.
Run composer update shopware/shopware.
