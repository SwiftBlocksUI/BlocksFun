// swift-tools-version:5.1

import PackageDescription

let package = Package(
  
  name: "BlocksFun",

  platforms: [
    .macOS(.v10_15), .iOS(.v13)
  ],
  
  products: [
    .executable(name: "BlocksFun", targets: [ "BlocksFun" ]),
  ],
  
  dependencies: [
    .package(url: "https://github.com/SwiftBlocksUI/SwiftBlocksUI.git",
             from: "0.8.3"),
    .package(url: "https://github.com/AlwaysRightInstitute/cows.git",
             from: "1.0.0")
  ],
  
  targets: [
    .target(name: "BlocksFun", dependencies: [ "SwiftBlocksUI", "cows" ])
  ]
)
