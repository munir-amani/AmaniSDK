// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AmaniSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name:"AmaniSDK",
            targets: ["AmaniSDKBundle"]
        )
    ],
    dependencies: [
        .package(
            name: "OpenSSL",
            url: "https://github.com/muzipiao/GMOpenSSL.git",
            .upToNextMinor(from: "3.0.9")
        )
    ],
    targets: [
        .binaryTarget(
            name:"AmaniSDK",
            path:"./Binaries/AmaniSDK.xcframework.zip"
        ),
        .target(
            name: "AmaniSDKBundle",
            dependencies: [
                    "AmaniSDK",
                    "OpenSSL"
                ],
            linkerSettings:[
              .linkedFramework("CryptoKit"),
              .linkedFramework("CoreNFC"),
              .linkedFramework("CryptoTokenKit"),
            ]
        ),
    ]
)

