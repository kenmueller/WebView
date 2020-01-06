// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "WebView",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
		.tvOS(.v13)
	],
	products: [
		.library(
			name: "WebView",
			targets: ["WebView"]
		)
	],
	targets: [
		.target(name: "WebView"),
		.testTarget(
			name: "WebViewTests",
			dependencies: ["WebView"]
		)
	]
)
