# Install script for directory: D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/test_async")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/aes.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/aria.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/asn1.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/asn1write.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/base64.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/bignum.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/build_info.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/camellia.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ccm.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/chacha20.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/chachapoly.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/check_config.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/cipher.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/cmac.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/compat-2.x.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/config_psa.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/constant_time.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ctr_drbg.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/debug.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/des.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/dhm.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ecdh.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ecdsa.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ecjpake.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ecp.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/entropy.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/error.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/gcm.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/hkdf.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/hmac_drbg.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/mbedtls_config.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/md.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/md5.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/memory_buffer_alloc.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/net_sockets.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/nist_kw.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/oid.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/pem.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/pk.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/pkcs12.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/pkcs5.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/platform.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/platform_time.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/platform_util.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/poly1305.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/private_access.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/psa_util.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ripemd160.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/rsa.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/sha1.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/sha256.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/sha512.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ssl.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ssl_cache.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ssl_ciphersuites.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ssl_cookie.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/ssl_ticket.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/threading.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/timing.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/version.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/x509.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/x509_crl.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/x509_crt.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/mbedtls/x509_csr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_builtin_composites.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_builtin_primitives.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_compat.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_config.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_driver_common.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_driver_contexts_composites.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_driver_contexts_primitives.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_extra.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_platform.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_se_driver.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_sizes.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_struct.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_types.h"
    "D:/myfiles/training/libuv-1.x/mbedtls-3.1.0/include/psa/crypto_values.h"
    )
endif()

