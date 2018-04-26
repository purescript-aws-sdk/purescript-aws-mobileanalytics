## Module AWS.MobileAnalytics.Requests

#### `putEvents`

``` purescript
putEvents :: forall eff. Service -> PutEventsInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.</p>


