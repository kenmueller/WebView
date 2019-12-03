// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "WebView",
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
