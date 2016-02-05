<?php
return array_replace_recursive($this->loadConfig($this->AppPath() . 'Configs/Default.php'), [
    'db' => [
        'username' => getenv('DB_USERNAME'),
        'password' => getenv('DB_PASSWORD'),
        'dbname'   => getenv('DB_DATABASE'),
        'host'     => getenv('DB_HOST'),
    ],

    'pluginnamespaces' => [
        'Default'   => $this->AppPath('Plugins_' . 'Default'),
        'Local'     => PROJECTDIR . '/Plugins/Local/',
        'Community' => PROJECTDIR . '/Plugins/Community/',
    ],
]);

