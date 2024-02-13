// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SegmentFirebase",
    platforms: [.iOS(.v12)],
    products: [.library(name: "SegmentFirebase", targets: ["SegmentFirebase"])],
    dependencies: [
        .package(
            name: "Segment",
            url: "https://github.com/MyUNiDAYS/analytics-ios",
            .exact("4.1.6-unidays-tag-1")
        ),
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk",
            .exact("10.2.0")
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
