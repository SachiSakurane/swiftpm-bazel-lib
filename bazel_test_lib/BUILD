load("@build_bazel_rules_apple//apple:apple.bzl", "apple_xcframework")

apple_xcframework(
    name = "swift_wrapper_lib",
    bundle_id = "moi.poi.SwiftWithBazel.xcframework",
    infoplists = [
        "//resources:Info.plist",
    ],
    ios = {
        "simulator": [
            "arm64",
            "x86_64",
        ],
        "device": [
            "arm64",
            "arm64e",
        ],
    },
    minimum_os_versions = {
        "ios": "11.0",
    },
    deps = ["//src:swift_wrapper_lib"],
)
