load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

cc_library(
    name = "cpp_core_lib",
    srcs = ["helloworld.cpp"],
    hdrs = ["helloworld.h"],
    tags = ["swift_module=CppCoreLib"]
)

swift_library(
    name = "swift_wrapper_lib",
    srcs = ["Wrapper.swift"],
    deps = [":cpp_core_lib"],
    module_name = "swift_wrapper_lib",
    visibility = ["//visibility:public"]
)
