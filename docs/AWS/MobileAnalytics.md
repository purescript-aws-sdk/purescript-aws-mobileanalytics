## Module AWS.MobileAnalytics

<p>Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.</p>

#### `putEvents`

``` purescript
putEvents :: forall eff. PutEventsInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.</p>

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { message :: NullOrUndefined (String) }
```

<p>An exception object returned when a request fails.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ message :: NullOrUndefined (String) } -> { message :: NullOrUndefined (String) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `Event`

``` purescript
newtype Event
  = Event { eventType :: String50Chars, timestamp :: ISO8601Timestamp, session :: NullOrUndefined (Session), version :: NullOrUndefined (String10Chars), attributes :: NullOrUndefined (MapOfStringToString), metrics :: NullOrUndefined (MapOfStringToNumber) }
```

<p>A JSON object representing a batch of unique event occurrences in your app.</p>

##### Instances
``` purescript
Newtype Event _
Generic Event _
Show Event
Decode Event
Encode Event
```

#### `newEvent`

``` purescript
newEvent :: String50Chars -> ISO8601Timestamp -> Event
```

Constructs Event from required parameters

#### `newEvent'`

``` purescript
newEvent' :: String50Chars -> ISO8601Timestamp -> ({ eventType :: String50Chars, timestamp :: ISO8601Timestamp, session :: NullOrUndefined (Session), version :: NullOrUndefined (String10Chars), attributes :: NullOrUndefined (MapOfStringToString), metrics :: NullOrUndefined (MapOfStringToNumber) } -> { eventType :: String50Chars, timestamp :: ISO8601Timestamp, session :: NullOrUndefined (Session), version :: NullOrUndefined (String10Chars), attributes :: NullOrUndefined (MapOfStringToString), metrics :: NullOrUndefined (MapOfStringToNumber) }) -> Event
```

Constructs Event's fields from required parameters

#### `EventListDefinition`

``` purescript
newtype EventListDefinition
  = EventListDefinition (Array Event)
```

##### Instances
``` purescript
Newtype EventListDefinition _
Generic EventListDefinition _
Show EventListDefinition
Decode EventListDefinition
Encode EventListDefinition
```

#### `ISO8601Timestamp`

``` purescript
newtype ISO8601Timestamp
  = ISO8601Timestamp String
```

##### Instances
``` purescript
Newtype ISO8601Timestamp _
Generic ISO8601Timestamp _
Show ISO8601Timestamp
Decode ISO8601Timestamp
Encode ISO8601Timestamp
```

#### `MapOfStringToNumber`

``` purescript
newtype MapOfStringToNumber
  = MapOfStringToNumber (StrMap Number)
```

##### Instances
``` purescript
Newtype MapOfStringToNumber _
Generic MapOfStringToNumber _
Show MapOfStringToNumber
Decode MapOfStringToNumber
Encode MapOfStringToNumber
```

#### `MapOfStringToString`

``` purescript
newtype MapOfStringToString
  = MapOfStringToString (StrMap String0to1000Chars)
```

##### Instances
``` purescript
Newtype MapOfStringToString _
Generic MapOfStringToString _
Show MapOfStringToString
Decode MapOfStringToString
Encode MapOfStringToString
```

#### `PutEventsInput`

``` purescript
newtype PutEventsInput
  = PutEventsInput { events :: EventListDefinition, clientContext :: String, clientContextEncoding :: NullOrUndefined (String) }
```

<p>A container for the data needed for a PutEvent operation</p>

##### Instances
``` purescript
Newtype PutEventsInput _
Generic PutEventsInput _
Show PutEventsInput
Decode PutEventsInput
Encode PutEventsInput
```

#### `newPutEventsInput`

``` purescript
newPutEventsInput :: String -> EventListDefinition -> PutEventsInput
```

Constructs PutEventsInput from required parameters

#### `newPutEventsInput'`

``` purescript
newPutEventsInput' :: String -> EventListDefinition -> ({ events :: EventListDefinition, clientContext :: String, clientContextEncoding :: NullOrUndefined (String) } -> { events :: EventListDefinition, clientContext :: String, clientContextEncoding :: NullOrUndefined (String) }) -> PutEventsInput
```

Constructs PutEventsInput's fields from required parameters

#### `Session`

``` purescript
newtype Session
  = Session { id :: NullOrUndefined (String50Chars), duration :: NullOrUndefined (Number), startTimestamp :: NullOrUndefined (ISO8601Timestamp), stopTimestamp :: NullOrUndefined (ISO8601Timestamp) }
```

<p>Describes the session. Session information is required on ALL events.</p>

##### Instances
``` purescript
Newtype Session _
Generic Session _
Show Session
Decode Session
Encode Session
```

#### `newSession`

``` purescript
newSession :: Session
```

Constructs Session from required parameters

#### `newSession'`

``` purescript
newSession' :: ({ id :: NullOrUndefined (String50Chars), duration :: NullOrUndefined (Number), startTimestamp :: NullOrUndefined (ISO8601Timestamp), stopTimestamp :: NullOrUndefined (ISO8601Timestamp) } -> { id :: NullOrUndefined (String50Chars), duration :: NullOrUndefined (Number), startTimestamp :: NullOrUndefined (ISO8601Timestamp), stopTimestamp :: NullOrUndefined (ISO8601Timestamp) }) -> Session
```

Constructs Session's fields from required parameters

#### `String0to1000Chars`

``` purescript
newtype String0to1000Chars
  = String0to1000Chars String
```

##### Instances
``` purescript
Newtype String0to1000Chars _
Generic String0to1000Chars _
Show String0to1000Chars
Decode String0to1000Chars
Encode String0to1000Chars
```

#### `String10Chars`

``` purescript
newtype String10Chars
  = String10Chars String
```

##### Instances
``` purescript
Newtype String10Chars _
Generic String10Chars _
Show String10Chars
Decode String10Chars
Encode String10Chars
```

#### `String50Chars`

``` purescript
newtype String50Chars
  = String50Chars String
```

##### Instances
``` purescript
Newtype String50Chars _
Generic String50Chars _
Show String50Chars
Decode String50Chars
Encode String50Chars
```

