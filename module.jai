#if OS == .WINDOWS {
    #load "windows.jai";
} else #if OS == .LINUX {
    #load "linux.jai";
} else #if OS == .MACOS {
    #load "macos.jai";
} else {
    #assert false "Unsupported OS";
}

#scope_module

#import "Vulkan"(VK_NO_PROTOTYPES = true);
