import PackageDescription

let package = Package(
	name: "PerfectHello",
	targets: [],
	dependencies: [
	.Package(url:"https://github.com/PerfectlySoft/Perfect.git",
        versions: Version(0,0,0)..<Version(10,0,0)),
    .Package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
        versions: "2.3.3" ..< Version.max),
    ]
)
