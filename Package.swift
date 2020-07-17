// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "OSQP",
  products: [
    .library(
      name: "OSQP",
      targets: ["QDLDL"]),
  ],
  targets: [
    .target(
      name: "OSQP",
      dependencies: ["QDLDL"],
      exclude: ["src/CMakeLists.txt", "include/CMakeLists.txt"],
      publicHeadersPath: "include"),
    .target(
      name: "QDLDL",
      sources: ["src/qdldl.c"],
      publicHeadersPath: "include")
  ]
)
