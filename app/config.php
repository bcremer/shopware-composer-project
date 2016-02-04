<?php

return array_replace_recursive($this->loadConfig($this->AppPath() . 'Configs/Default.php'), [
    'db' => [
        'username' => 'root',
        'password' => 'root',
        'dbname' => 'shopware',
        'host' => 'localhost',
        'port' => '3306'
    ],

    'pluginnamespaces' => [
        'Default'   => $this->AppPath('Plugins_' . 'Default'),
        'Local'     => PROJECTDIR . '/Plugins/Local/',
        'Community' => PROJECTDIR . '/Plugins/Community/',
    ],
]);

