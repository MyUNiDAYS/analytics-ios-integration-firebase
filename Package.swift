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
        .revision("76e4d86780e56c566c0c99a05841b4a4c8905f72")
      ),
      .package(
        name: "Firebase",
        url: "https://github.com/firebase/firebase-ios-sdk.git",
        .exact("10.21.0")
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
