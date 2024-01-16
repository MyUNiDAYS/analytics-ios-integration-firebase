// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(name: "Segment", path: "/Users/jacobhughes/Development/unidays/iOS/analytics-ios"),
      .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.19.0"),
    ],
    targets: [
        .target(
            name: "SegmentFirebase",
            dependencies: [
              "Segment",
              .product(name: "FirebaseAnalytics", package: "Firebase")
            ],
            path: "Segment-Firebase/Classes",
            publicHeadersPath: ""
        )
    ]
)
