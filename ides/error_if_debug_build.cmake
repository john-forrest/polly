# include this file to throw an error if the user is trying to build a debug configuration.
# must be included after the TARGET has been defined, for example a library or executable.

if(MSVC)
    add_custom_command(TARGET ${LIBRARY_NAME}
                       PRE_BUILD
                       COMMAND cmd /c ${CMAKE_CURRENT_LIST_DIR}/error_if_debug_build.bat "$(ConfigurationName)"
                       COMMENT comment "throw an error if the user tries to build in debug configuration")
endif()