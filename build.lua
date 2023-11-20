-- build.lua
workspace "projX14"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "sandbox"

   -- Workspace-wide build options for MSVC
   filter "system:windows"
      buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

group "engine"
	include "engine/build-engine.lua"
group ""

include "sandbox/build-sandbox.lua"