project "glad"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    
    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files {
        "src/**.c",
        "include/**.h"
    }

    includedirs {
        "include"
    }
    
    filter "system:windows"
        systemversion "latest"