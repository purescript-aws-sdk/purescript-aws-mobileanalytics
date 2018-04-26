
module AWS.MobileAnalytics.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MobileAnalytics as MobileAnalytics
import AWS.MobileAnalytics.Types as MobileAnalyticsTypes


-- | <p>The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.</p>
putEvents :: forall eff. MobileAnalytics.Service -> MobileAnalyticsTypes.PutEventsInput -> Aff (exception :: EXCEPTION | eff) Unit
putEvents (MobileAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putEvents"
