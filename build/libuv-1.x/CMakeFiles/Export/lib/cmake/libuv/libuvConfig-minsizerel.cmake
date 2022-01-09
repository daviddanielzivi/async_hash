#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "uv" for configuration "MinSizeRel"
set_property(TARGET uv APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(uv PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/uv.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS uv )
list(APPEND _IMPORT_CHECK_FILES_FOR_uv "${_IMPORT_PREFIX}/lib/uv.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
