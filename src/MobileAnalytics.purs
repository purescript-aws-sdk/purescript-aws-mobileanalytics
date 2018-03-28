

-- | <p>Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.</p>
module AWS.MobileAnalytics where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "MobileAnalytics"
    service' <- AWS.service serviceName options
    pure $ Service service'
