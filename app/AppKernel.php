<?php

use Shopware\Kernel;

class AppKernel extends Kernel
{
    /**
     * @return string
     */
    protected function getConfigPath()
    {
        return dirname(__DIR__).'/app/config.php';
    }

    /**
     * @return string
     */
    public function getCacheDir()
    {
        return dirname(__DIR__).'/var/cache/'.$this->getEnvironment();
    }

    /**
     * Gets the log directory.
     *
     * @return string The log directory
     */
    public function getLogDir()
    {
        return dirname(__DIR__).'/var/logs';
    }
}
