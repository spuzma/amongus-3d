# Install script for directory: /home/buz/code/amongus-3d/lib/SDL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/buz/code/amongus-3d/lib/libSDL2-2.0.so.0.3100.0"
    "/home/buz/code/amongus-3d/lib/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0.3100.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/buz/code/amongus-3d/lib/libSDL2-2.0.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/buz/code/amongus-3d/lib/libSDL2main.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/buz/code/amongus-3d/lib/libSDL2.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/buz/code/amongus-3d/lib/libSDL2_test.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2testTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2testTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/CMakeFiles/Export/lib/cmake/SDL2/SDL2testTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/home/buz/code/amongus-3d/lib/SDL2Config.cmake"
    "/home/buz/code/amongus-3d/lib/SDL2ConfigVersion.cmake"
    "/home/buz/code/amongus-3d/lib/SDL/cmake/sdlfind.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_assert.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_atomic.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_audio.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_bits.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_blendmode.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_clipboard.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_copying.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_cpuinfo.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_egl.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_endian.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_error.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_events.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_filesystem.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_gamecontroller.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_gesture.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_guid.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_haptic.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_hidapi.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_hints.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_joystick.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_keyboard.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_keycode.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_loadso.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_locale.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_log.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_main.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_messagebox.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_metal.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_misc.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_mouse.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_mutex.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_name.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengl.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengl_glext.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles2.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles2_gl2.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles2_gl2ext.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles2_gl2platform.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_opengles2_khrplatform.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_pixels.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_platform.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_power.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_quit.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_rect.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_render.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_rwops.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_scancode.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_sensor.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_shape.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_stdinc.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_surface.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_system.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_syswm.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_assert.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_common.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_compare.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_crc32.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_font.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_fuzzer.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_harness.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_images.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_log.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_md5.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_memory.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_test_random.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_thread.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_timer.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_touch.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_types.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_version.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_video.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/SDL_vulkan.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/begin_code.h"
    "/home/buz/code/amongus-3d/lib/SDL/include/close_code.h"
    "/home/buz/code/amongus-3d/lib/include/SDL2/SDL_revision.h"
    "/home/buz/code/amongus-3d/lib/include-config-/SDL2/SDL_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/SDL/LICENSE.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /usr/bin/cmake -E create_symlink
              "libSDL2-2.0.so" "libSDL2.so"
              WORKING_DIRECTORY "/home/buz/code/amongus-3d/lib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/libSDL2.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/buz/code/amongus-3d/lib/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/buz/code/amongus-3d/lib/SDL/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/buz/code/amongus-3d/lib/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
