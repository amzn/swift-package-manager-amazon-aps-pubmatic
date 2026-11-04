# Amazon Publisher Services PubMatic Adapter — Swift Package Manager

Swift Package Manager distribution for the APS PubMatic mediation adapter.

## Requirements

- iOS 15.0+
- Xcode 15.0+
- Amazon Publisher Services SDK 5.6.6+
- OpenWrap SDK 5.5.0 – 5.x

## Installation

**Xcode**

1. File → Add Package Dependencies…
2. Enter `https://github.com/amzn/swift-package-manager-amazon-aps-pubmatic.git`
3. Select "Up to Next Major Version" from `1.0.0`.
4. Add the `AmazonPublisherServicesPubmaticAdapter` product to your app target.

**Package.swift**

```swift
.package(url: "https://github.com/amzn/swift-package-manager-amazon-aps-pubmatic.git", from: "1.0.0")
```

Then add the product:

```swift
.product(name: "AmazonPublisherServicesPubmaticAdapter", package: "swift-package-manager-amazon-aps-pubmatic")
```

Adding this package transitively pulls in the APS SDK and the OpenWrap SDK — you do not need to add them separately.

## Usage

```objc
// Objective-C
#import <DTBiOSSDK/DTBiOSSDK.h>
```

```swift
// Swift
import DTBiOSSDK
```

`AmazonPublisherServicesPubmaticAdapter` is the SPM **product** (what you attach in Xcode). Adapter classes are loaded automatically at runtime via `NSClassFromString` — you do not need to import the adapter module in application code.

## `-ObjC` linker flag

Add `-ObjC` to **Build Settings → Other Linker Flags** for your app target. Required by DTBiOSSDK and OpenWrap SDK.

## License

Apache License 2.0. See [LICENSE](./LICENSE).
