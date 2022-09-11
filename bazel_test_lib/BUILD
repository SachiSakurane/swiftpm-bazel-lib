load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@build_bazel_rules_apple//apple:apple.bzl", "apple_xcframework")

cc_library(
  name = "cpp_core_lib",
  srcs = glob(["src/*.cpp"]),
  hdrs = glob(["src/*.h"]),
)

swift_library(
    name = "swift_wrapper_lib",
    srcs = glob(["src/*.swift"]),
    deps = ["cpp_core_lib"],
)

apple_xcframework(
    name = "result_lib",
    bundle_id = "moi.poi.SwiftWithBazel.xcframework",
    infoplists = [
        "//bazel-test/resources:Info.plist",
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
    deps = [":swift_lib"],
)
