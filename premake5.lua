project "GLFW"
    kind "StaticLib"
    language "C"
    
	  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	        "include/GLFW/glfw3.h",
	        "include/GLFW/glfw3native.h",
		"src/**.h",
		"src/**.c"
	    }
    
	filter "system:windows"
        systemversion "latest"
        staticruntime "On"

		defines 
		{ 
            "_GLFW_WIN32",
            "_CRT_SECURE_NO_WARNINGS"
		}
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
