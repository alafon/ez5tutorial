<?php
/**
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License v2
 * @version  2013.1
 * @package kernel
 */

$Module = $Params['Module'];
$http = eZHTTPTool::instance();
$archiveIDArray = $http->sessionVariable( "OrderIDArray" );

$db = eZDB::instance();
$db->begin();
foreach ( $archiveIDArray as $archiveID )
{
    eZOrder::archiveOrder( $archiveID );
}
$db->commit();
$Module->redirectTo( '/shop/orderlist/' );
?>
