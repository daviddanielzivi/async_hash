#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MbedTLS::mbedcrypto" for configuration "Debug"
set_property(TARGET MbedTLS::mbedcrypto APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(MbedTLS::mbedcrypto PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/mbedcrypto.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS MbedTLS::mbedcrypto )
list(APPEND _IMPORT_CHECK_FILES_FOR_MbedTLS::mbedcrypto "${_IMPORT_PREFIX}/lib/mbedcrypto.lib" )

# Import target "MbedTLS::mbedx509" for configuration "Debug"
set_property(TARGET MbedTLS::mbedx509 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(MbedTLS::mbedx509 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/mbedx509.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS MbedTLS::mbedx509 )
list(APPEND _IMPORT_CHECK_FILES_FOR_MbedTLS::mbedx509 "${_IMPORT_PREFIX}/lib/mbedx509.lib" )

# Import target "MbedTLS::mbedtls" for configuration "Debug"
set_property(TARGET MbedTLS::mbedtls APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(MbedTLS::mbedtls PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/mbedtls.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS MbedTLS::mbedtls )
list(APPEND _IMPORT_CHECK_FILES_FOR_MbedTLS::mbedtls "${_IMPORT_PREFIX}/lib/mbedtls.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
