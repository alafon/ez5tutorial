<?php
/**
 * File containing the Legacy\CopyContentSlot class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Slot;

use eZ\Publish\Core\SignalSlot\Signal;
use eZ\Publish\Core\SignalSlot\Slot\AbstractLegacySlot;

/**
 * A legacy slot handling CopyContentSignal.
 */
class LegacyCopyContentSlot extends AbstractLegacySlot
{
    /**
     * Receive the given $signal and react on it
     *
     * @param \eZ\Publish\Core\SignalSlot\Signal $signal
     *
     * @return void
     */
    public function receive( Signal $signal )
    {
        if ( !$signal instanceof Signal\ContentService\CopyContentSignal )
            return;

        $kernel = $this->getLegacyKernel();
        $kernel->runCallback(
            function () use ( $signal )
            {
                \eZContentCacheManager::clearContentCacheIfNeeded( $signal->dstContentId );
                $object = \eZContentObject::fetch( $signal->dstContentId );
                \eZSearch::addObject( $object, false );
            },
            false
        );
    }
}
