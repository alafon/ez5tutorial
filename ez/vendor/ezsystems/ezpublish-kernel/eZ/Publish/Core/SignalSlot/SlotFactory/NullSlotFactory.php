<?php
/**
 * File containing the NullSlotFactory class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\SlotFactory;

use eZ\Publish\Core\SignalSlot\SlotFactory;
use RuntimeException;

class NullSlotFactory extends SlotFactory
{
    /**
     * Returns a Slot with the given $slotIdentifier
     *
     * @param string $slotIdentifier
     *
     * @return \eZ\Publish\Core\SignalSlot\Slot
     */
    public function getSlot( $slotIdentifier )
    {
        throw new RuntimeException( "Slot creation not supported." );
    }
}
