// swift-tools-version:4.0
import PackageDescription

let package = Package(
	name: "PostgresWireServer",
	products: [
		.library(name: "PostgresWireServer", targets: ["PostgresWireServer"]),
		.executable(name: "PostgresWireServerExample", targets: ["PostgresWireServerExample"]),
	],
	dependencies: [
		.package(url: "https://github.com/IBM-Swift/BlueSocket.git", from: Version("1.0.25")),
		.package(url: "https://github.com/arkeo01/HeliumLogger.git", from: Version("1.7.3")),
	],
	targets: [
		.target(name: "PostgresWireServer", dependencies: [
				"Socket",
				"HeliumLogger"
			], path: "Sources/PostgresWireServer"),
		.target(name: "PostgresWireServerExample", dependencies: [
			"PostgresWireServer"
		], path: "Sources/PostgresWireServerExample")
	]
)
