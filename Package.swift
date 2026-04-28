// swift-tools-version:5.3
import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.6.300-static"
let checksum = "163b011cd225bbc663cabbc64c53899434de88d05e849226f8dcfdf4b598cd6c"

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
