// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Cosqp",
  products: [
    .library(name: "Cosqp", type: .dynamic, targets: ["OSQP"]),
    .library(name: "Cqdldl", type: .dynamic, targets: ["QDLDL"])
  ],
  targets: [
    .target(
      name: "OSQP",
      dependencies: ["QDLDL"],
      exclude: ["src/osqp/CMakeLists.txt", "include/CMakeLists.txt"],
      publicHeadersPath: "include"),
    .target(
      name: "QDLDL",
      sources: ["src/qdldl.c"],
      publicHeadersPath: "include")
  ]
)
