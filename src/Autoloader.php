<?php
    namespace App; 

    class Autoloader{

        /**
         * Autoloader
         *
         * @return void
         */

        public static function register()
        {
            spl_autoload_register([__CLASS__,'autoload']);
        }

        /**
         * Autoload Class
         *
         * @param string $class
         * @return void
         */
        
        private static function autoload($class)
        {
            if(strpos($class,__NAMESPACE__.'\\') === 0 )
            {
                $class = str_replace(__NAMESPACE__.'\\','',$class);
                $class = str_replace('\\','/',$class);
                require __DIR__.'/'.$class.'.php';
            }
        }
    }
    