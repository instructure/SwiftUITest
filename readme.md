# EarlGrey 2 Swift wrapper

- `brew install carthage`
- `carthage bootstrap`

## Usage

Define a `Cartfile`

```
github "instructure/earlgrey2-swift" "master"
```

Reference `EGSwift.framework` built by Carthage.

- `Carthage/Build/iOS/EGSwift.framework`

EarlGrey has to be [included by .xcodeproj](https://github.com/google/EarlGrey/tree/earlgrey2/Demo/DemoApp)

- `Carthage/Checkouts/EarlGrey/EarlGrey.xcodeproj`

## To Do

- [ ] Move helper methods into EGSwift framework
- [ ] Write tests for the helper methods using `EarlGrey/Tests/FunctionalTests`
- [ ] Update `canvas-ios` to use the new helpers
