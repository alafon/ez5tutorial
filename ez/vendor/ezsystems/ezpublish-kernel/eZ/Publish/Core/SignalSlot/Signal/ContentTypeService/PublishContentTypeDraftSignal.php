<?php
/**
 * PublishContentTypeDraftSignal class
 *
 * @copyright Copyright (C) 1999-2013 eZ Systems AS. All rights reserved.
 * @license http://ez.no/licenses/gnu_gpl GNU General Public License v2.0
 * @version 
 */

namespace eZ\Publish\Core\SignalSlot\Signal\ContentTypeService;

use eZ\Publish\Core\SignalSlot\Signal;

/**
 * PublishContentTypeDraftSignal class
 * @package eZ\Publish\Core\SignalSlot\Signal\ContentTypeService
 */
class PublishContentTypeDraftSignal extends Signal
{
    /**
     * ContentTypeDraftId
     *
     * @var mixed
     */
    public $contentTypeDraftId;
}
