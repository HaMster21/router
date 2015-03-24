project(fakeit_builder CXX)
find_package(Git REQUIRED)
include(ExternalProject)

ExternalProject_Add(
    fakeit
    PREFIX ${CMAKE_BINARY_DIR}/fakeit
    GIT_REPOSITORY https://github.com/eranpeer/FakeIt.git
    UPDATE_COMMAND ${GIT_EXECUTABLE} pull
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    LOG_DOWNLOAD ON
)

ExternalProject_Get_Property(fakeit source_dir)
set(FAKEIT_INCLUDE_DIR ${source_dir}/include/ ${source_dir}/config/standalone/ CACHE INTERNAL "Path to include folder for FakeIt")
