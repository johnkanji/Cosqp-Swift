// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "OSQP",
  products: [
    .library(name: "OSQP", type: .dynamic, targets: ["OSQP"]),
    .library(name: "QDLDL", type: .dynamic, targets: ["QDLDL"])
  ],
  targets: [
    .target(
      name: "OSQP",
      dependencies: ["QDLDL"],
      exclude: ["src/osqp/CMakeLists.txt", "include/osqp/CMakeLists.txt"],
      publicHeadersPath: "include",
      cSettings: [
        .headerSearchPath("include"),
        .headerSearchPath("include/osqp"),
        .headerSearchPath("include/amd"),
      ]),
    .target(
      name: "QDLDL",
      sources: ["src/qdldl.c"],
      publicHeadersPath: "include")
  ]
)
