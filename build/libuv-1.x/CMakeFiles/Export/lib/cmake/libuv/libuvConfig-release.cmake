#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "uv" for configuration "Release"
set_property(TARGET uv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(uv PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/uv.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS uv )
list(APPEND _IMPORT_CHECK_FILES_FOR_uv "${_IMPORT_PREFIX}/lib/uv.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
