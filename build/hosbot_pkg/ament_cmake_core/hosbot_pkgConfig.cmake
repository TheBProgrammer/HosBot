# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_hosbot_pkg_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED hosbot_pkg_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(hosbot_pkg_FOUND FALSE)
  elseif(NOT hosbot_pkg_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(hosbot_pkg_FOUND FALSE)
  endif()
  return()
endif()
set(_hosbot_pkg_CONFIG_INCLUDED TRUE)

# output package information
if(NOT hosbot_pkg_FIND_QUIETLY)
  message(STATUS "Found hosbot_pkg: 0.0.0 (${hosbot_pkg_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'hosbot_pkg' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${hosbot_pkg_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(hosbot_pkg_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${hosbot_pkg_DIR}/${_extra}")
endforeach()
