    
project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
	targetdir (vendor_output_dir)
    objdir (vendor_output_int_dir)
	
	files
	{
        "ImCurveEdit.cpp",
        "ImCurveEdit.h",
        "ImGradient.cpp",
        "ImGradient.h",
        "ImGuizmo.cpp",
        "ImGuizmo.h",
        "ImSequencer.cpp",
        "ImSequencer.h",
        "ImZoomSlider.h"
    }
	
	includedirs
	{
		"%{IncludeDir.ImGui}"
	}
    
	filter "system:windows"
        systemversion "latest"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"