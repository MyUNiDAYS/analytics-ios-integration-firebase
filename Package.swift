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
        .revision("508ec32e151eae684240a2ed908b99d0a158c687")
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
