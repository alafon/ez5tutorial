<?php
/**
 * File containing the eZExtension mock class.
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

/**
 * This class is used to mock the dependency on eZExecution in the Legacy BinaryStorage backend.
 */
class eZExtension
{
    public static function getHandlerClass( ezpExtensionOptions $options )
    {
        if ( $options->handlerParams !== null && count( $options->handlerParams === 1 ) )
        {
            return new eZFSFileHandler( $options->handlerParams[0] );
        }

        return new eZFSFileHandler;
    }
}
