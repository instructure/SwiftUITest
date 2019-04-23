# Swift UI testing framework

Provides a pluggable abstraction over XCUITest and eventually EarlGrey.
This allows changing UI test frameworks without having to rewrite tests.

- `brew install carthage`
- `carthage bootstrap`

## Developing SwiftUITest

Run `FunctionalTestRig` once to get it installed on the simulator.

- `carthage bootstrap --no-build`
- `open Carthage/Checkouts/EarlGrey/Tests/FunctionalTests/FunctionalTests.xcodeproj`
- Run `FunctionalTestRig`

## Usage

Define a `Cartfile`

```
github "instructure/SwiftUITest" "master"
```

Reference `SwiftUITest.framework` built by Carthage.

- `Carthage/Build/iOS/SwiftUITest.framework`

## To Do

- [ ] Move helper methods into SwiftUITest framework
- [x] Write tests for the helper methods using `EarlGrey/Tests/FunctionalTests`
- [ ] Update `canvas-ios` to use the new helpers
