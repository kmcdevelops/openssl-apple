// swift-tools-version:5.3
import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.6.300-library"
let checksum = "a2545ec591b4229f8017ea54f5e283b8720a9e04f492a6c00d70c036030cb666"

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/kmcdevelops/openssl-apple/releases/download/\(version)/\(filename)",
            checksum: checksum
        ),
    ]
)
