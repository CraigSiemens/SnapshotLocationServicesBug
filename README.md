Issue can be shown by running the tests from Xcode with `⌘ + U` or by running snapshot

```
fastlane snapshot
```

The issue only occurs when the Geofence icon (hollow icon) is in the status bar since it has the same size as the network activity indicator.
```
Other 0x600000179500: traits: 8388608, {{321.0, 0.0}, {10.0, 20.0}}, identifier: 'GeofenceLocationTrackingOn', label: 'Region tracking on'
```

The regular icon (solid icon) has a smaller size so the issue doesnt occur.
```
Other 0x60000017a400: traits: 8388608, {{322.0, 0.0}, {9.0, 20.0}}, identifier: 'StandardLocationTrackingOn', label: 'Location tracking on'
```