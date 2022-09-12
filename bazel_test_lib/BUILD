load("@build_bazel_rules_apple//apple:apple.bzl", "apple_xcframework")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

package(
    default_visibility = ["//visibility:public"],
)

cc_library(
    name = "cpp_core_lib",
    srcs = ["//src:helloworld.cpp"],
    hdrs = ["//src:helloworld.h"],
    tags = ["swift_module=CppCoreLib"],
    linkstatic = True,
)

swift_library(
    name = "swift_wrapped_cpp_core_lib",
    module_name = "SwiftWrappedCppCore",
    srcs = ["//src:Wrapper.swift"],
    deps = [":cpp_core_lib"],
)

apple_xcframework(
    name = "swift_wrapper_framework",
    bundle_id = "moi.poi.SwiftWithBazel.xcframework",
    bundle_name = "SwiftWrappedCppCore",
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
    deps = [
        "//:swift_wrapped_cpp_core_lib",
    ],
)
