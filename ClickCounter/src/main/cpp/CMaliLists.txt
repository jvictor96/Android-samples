cmake_minimum_required(VERSION 3.18.1)
project("native-renderer")

add_library(native-renderer SHARED native-renderer.c)

find_library(log-lib log)
find_library(android-lib android)
target_link_libraries(native-renderer ${log-lib} ${android-lib} EGL GLESv3)
