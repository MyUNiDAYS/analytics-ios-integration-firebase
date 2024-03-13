// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v11)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
      .package(
        name: "Segment",
        url: "https://github.com/MyUNiDAYS/analytics-ios.git",
        .revision("f73757a212d1c7f85b5e1ed3356f7011418302e3")
      ),
      .package(
        name: "Firebase",
        url: "https://github.com/firebase/firebase-ios-sdk.git",
        from: "10.21.0"
      ),
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
