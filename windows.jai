//
// This file was auto-generated using the following command:
//
// jai generate.jai - -compile
//



VOLK_HEADER_VERSION :: 365;

/**
* Initialize library by loading Vulkan loader; call this function before creating the Vulkan instance.
*
* Returns VK_SUCCESS on success and VK_ERROR_INITIALIZATION_FAILED otherwise.
*/
volkInitialize :: () -> VkResult #foreign volk;

/**
* Initialize library by providing a custom handler to load global symbols.
*
* This function can be used instead of volkInitialize.
* The handler function pointer will be asked to load global Vulkan symbols which require no instance
* (such as vkCreateInstance, vkEnumerateInstance* and vkEnumerateInstanceVersion if available).
*/
volkInitializeCustom :: (handler: PFN_vkGetInstanceProcAddr) -> void #foreign volk;

/**
* Finalize library by unloading Vulkan loader and resetting global symbols to NULL.
*
* This function does not need to be called on process exit (as loader will be unloaded automatically) or if volkInitialize failed.
* In general this function is optional to call but may be useful in rare cases eg if volk needs to be reinitialized multiple times.
*/
volkFinalize :: () -> void #foreign volk;

/**
* Get Vulkan instance version supported by the Vulkan loader, or 0 if Vulkan isn't supported
*
* Returns 0 if volkInitialize wasn't called or failed.
*/
volkGetInstanceVersion :: () -> u32 #foreign volk;

/**
* Load global function pointers using application-created VkInstance; call this function after creating the Vulkan instance.
*/
volkLoadInstance :: (instance: VkInstance) -> void #foreign volk;

/**
* Load global function pointers using application-created VkInstance; call this function after creating the Vulkan instance.
* Skips loading device-based function pointers, requires usage of volkLoadDevice afterwards.
*/
volkLoadInstanceOnly :: (instance: VkInstance) -> void #foreign volk;

/**
* Load global function pointers using application-created VkDevice; call this function after creating the Vulkan device.
*
* Note: this is not suitable for applications that want to use multiple VkDevice objects concurrently.
*/
volkLoadDevice :: (device: VkDevice) -> void #foreign volk;

/**
* Return last VkInstance for which global function pointers have been loaded via volkLoadInstance(),
* or VK_NULL_HANDLE if volkLoadInstance() has not been called.
*/
volkGetLoadedInstance :: () -> VkInstance #foreign volk;

/**
* Return last VkDevice for which global function pointers have been loaded via volkLoadDevice(),
* or VK_NULL_HANDLE if volkLoadDevice() has not been called.
*/
volkGetLoadedDevice :: () -> VkDevice #foreign volk;

/**
* Load function pointers using application-created VkInstance into a table.
* Application should use function pointers from that table instead of using global function pointers.
*/
volkLoadInstanceTable :: (table: *VolkInstanceTable, instance: VkInstance) -> void #foreign volk;

/**
* Load function pointers using application-created VkDevice into a table.
* Application should use function pointers from that table instead of using global function pointers.
*/
volkLoadDeviceTable :: (table: *VolkDeviceTable, device: VkDevice) -> void #foreign volk;

/**
* Instance-specific function pointer table
*/
VolkInstanceTable :: struct {
    vkCreateDevice:                                                       PFN_vkCreateDevice;
    vkDestroyInstance:                                                    PFN_vkDestroyInstance;
    vkEnumerateDeviceExtensionProperties:                                 PFN_vkEnumerateDeviceExtensionProperties;
    vkEnumerateDeviceLayerProperties:                                     PFN_vkEnumerateDeviceLayerProperties;
    vkEnumeratePhysicalDevices:                                           PFN_vkEnumeratePhysicalDevices;
    vkGetDeviceProcAddr:                                                  PFN_vkGetDeviceProcAddr;
    vkGetPhysicalDeviceFeatures:                                          PFN_vkGetPhysicalDeviceFeatures;
    vkGetPhysicalDeviceFormatProperties:                                  PFN_vkGetPhysicalDeviceFormatProperties;
    vkGetPhysicalDeviceImageFormatProperties:                             PFN_vkGetPhysicalDeviceImageFormatProperties;
    vkGetPhysicalDeviceMemoryProperties:                                  PFN_vkGetPhysicalDeviceMemoryProperties;
    vkGetPhysicalDeviceProperties:                                        PFN_vkGetPhysicalDeviceProperties;
    vkGetPhysicalDeviceQueueFamilyProperties:                             PFN_vkGetPhysicalDeviceQueueFamilyProperties;
    vkGetPhysicalDeviceSparseImageFormatProperties:                       PFN_vkGetPhysicalDeviceSparseImageFormatProperties;

    vkEnumeratePhysicalDeviceGroups:                                      PFN_vkEnumeratePhysicalDeviceGroups;
    vkGetPhysicalDeviceExternalBufferProperties:                          PFN_vkGetPhysicalDeviceExternalBufferProperties;
    vkGetPhysicalDeviceExternalFenceProperties:                           PFN_vkGetPhysicalDeviceExternalFenceProperties;
    vkGetPhysicalDeviceExternalSemaphoreProperties:                       PFN_vkGetPhysicalDeviceExternalSemaphoreProperties;
    vkGetPhysicalDeviceFeatures2:                                         PFN_vkGetPhysicalDeviceFeatures2;
    vkGetPhysicalDeviceFormatProperties2:                                 PFN_vkGetPhysicalDeviceFormatProperties2;
    vkGetPhysicalDeviceImageFormatProperties2:                            PFN_vkGetPhysicalDeviceImageFormatProperties2;
    vkGetPhysicalDeviceMemoryProperties2:                                 PFN_vkGetPhysicalDeviceMemoryProperties2;
    vkGetPhysicalDeviceProperties2:                                       PFN_vkGetPhysicalDeviceProperties2;
    vkGetPhysicalDeviceQueueFamilyProperties2:                            PFN_vkGetPhysicalDeviceQueueFamilyProperties2;
    vkGetPhysicalDeviceSparseImageFormatProperties2:                      PFN_vkGetPhysicalDeviceSparseImageFormatProperties2;

    vkGetPhysicalDeviceToolProperties:                                    PFN_vkGetPhysicalDeviceToolProperties;

    vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM: PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM;
    vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM:                 PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM;

    vkGetPhysicalDeviceQueueFamilyDataGraphOpticalFlowImageFormatsARM:    PFN_vkGetPhysicalDeviceQueueFamilyDataGraphOpticalFlowImageFormatsARM;

    vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM:   PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM;

    vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM:             PFN_vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM;

    vkGetPhysicalDeviceExternalTensorPropertiesARM:                       PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM;

    vkAcquireDrmDisplayEXT:                                               PFN_vkAcquireDrmDisplayEXT;
    vkGetDrmDisplayEXT:                                                   PFN_vkGetDrmDisplayEXT;

    padding_6e6f0a05:                                                     [2] PFN_vkVoidFunction;

    vkGetPhysicalDeviceCalibrateableTimeDomainsEXT:                       PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT;

    vkGetPhysicalDeviceCooperativeMatrixProperties2EXT:                   PFN_vkGetPhysicalDeviceCooperativeMatrixProperties2EXT;

    vkCreateDebugReportCallbackEXT:                                       PFN_vkCreateDebugReportCallbackEXT;
    vkDebugReportMessageEXT:                                              PFN_vkDebugReportMessageEXT;
    vkDestroyDebugReportCallbackEXT:                                      PFN_vkDestroyDebugReportCallbackEXT;

    vkCmdBeginDebugUtilsLabelEXT:                                         PFN_vkCmdBeginDebugUtilsLabelEXT;
    vkCmdEndDebugUtilsLabelEXT:                                           PFN_vkCmdEndDebugUtilsLabelEXT;
    vkCmdInsertDebugUtilsLabelEXT:                                        PFN_vkCmdInsertDebugUtilsLabelEXT;
    vkCreateDebugUtilsMessengerEXT:                                       PFN_vkCreateDebugUtilsMessengerEXT;
    vkDestroyDebugUtilsMessengerEXT:                                      PFN_vkDestroyDebugUtilsMessengerEXT;
    vkQueueBeginDebugUtilsLabelEXT:                                       PFN_vkQueueBeginDebugUtilsLabelEXT;
    vkQueueEndDebugUtilsLabelEXT:                                         PFN_vkQueueEndDebugUtilsLabelEXT;
    vkQueueInsertDebugUtilsLabelEXT:                                      PFN_vkQueueInsertDebugUtilsLabelEXT;
    vkSetDebugUtilsObjectNameEXT:                                         PFN_vkSetDebugUtilsObjectNameEXT;
    vkSetDebugUtilsObjectTagEXT:                                          PFN_vkSetDebugUtilsObjectTagEXT;
    vkSubmitDebugUtilsMessageEXT:                                         PFN_vkSubmitDebugUtilsMessageEXT;

    vkGetPhysicalDeviceDescriptorSizeEXT:                                 PFN_vkGetPhysicalDeviceDescriptorSizeEXT;

    vkReleaseDisplayEXT:                                                  PFN_vkReleaseDisplayEXT;

    padding_f7e0f7b1:                                                     [2] PFN_vkVoidFunction;

    vkGetPhysicalDeviceSurfaceCapabilities2EXT:                           PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT;

    vkGetPhysicalDeviceSurfacePresentModes2EXT:                           PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT;

    vkCreateHeadlessSurfaceEXT:                                           PFN_vkCreateHeadlessSurfaceEXT;

    padding_1c6d079a:                                                     [1] PFN_vkVoidFunction;

    vkGetPhysicalDeviceMultisamplePropertiesEXT:                          PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT;

    vkGetPhysicalDeviceToolPropertiesEXT:                                 PFN_vkGetPhysicalDeviceToolPropertiesEXT;

    padding_6db35e8f:                                                     [1] PFN_vkVoidFunction;

    padding_cc96d0ec:                                                     [1] PFN_vkVoidFunction;

    padding_ab4fe82c:                                                     [1] PFN_vkVoidFunction;

    vkGetPhysicalDeviceCalibrateableTimeDomainsKHR:                       PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR;

    vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR:                    PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR;

    vkEnumeratePhysicalDeviceGroupsKHR:                                   PFN_vkEnumeratePhysicalDeviceGroupsKHR;

    vkCreateDisplayModeKHR:                                               PFN_vkCreateDisplayModeKHR;
    vkCreateDisplayPlaneSurfaceKHR:                                       PFN_vkCreateDisplayPlaneSurfaceKHR;
    vkGetDisplayModePropertiesKHR:                                        PFN_vkGetDisplayModePropertiesKHR;
    vkGetDisplayPlaneCapabilitiesKHR:                                     PFN_vkGetDisplayPlaneCapabilitiesKHR;
    vkGetDisplayPlaneSupportedDisplaysKHR:                                PFN_vkGetDisplayPlaneSupportedDisplaysKHR;
    vkGetPhysicalDeviceDisplayPlanePropertiesKHR:                         PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR;
    vkGetPhysicalDeviceDisplayPropertiesKHR:                              PFN_vkGetPhysicalDeviceDisplayPropertiesKHR;

    vkGetPhysicalDeviceExternalFencePropertiesKHR:                        PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR;

    vkGetPhysicalDeviceExternalBufferPropertiesKHR:                       PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR;

    vkGetPhysicalDeviceExternalSemaphorePropertiesKHR:                    PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR;

    vkGetPhysicalDeviceFragmentShadingRatesKHR:                           PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR;

    vkGetDisplayModeProperties2KHR:                                       PFN_vkGetDisplayModeProperties2KHR;
    vkGetDisplayPlaneCapabilities2KHR:                                    PFN_vkGetDisplayPlaneCapabilities2KHR;
    vkGetPhysicalDeviceDisplayPlaneProperties2KHR:                        PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR;
    vkGetPhysicalDeviceDisplayProperties2KHR:                             PFN_vkGetPhysicalDeviceDisplayProperties2KHR;

    vkGetPhysicalDeviceFeatures2KHR:                                      PFN_vkGetPhysicalDeviceFeatures2KHR;
    vkGetPhysicalDeviceFormatProperties2KHR:                              PFN_vkGetPhysicalDeviceFormatProperties2KHR;
    vkGetPhysicalDeviceImageFormatProperties2KHR:                         PFN_vkGetPhysicalDeviceImageFormatProperties2KHR;
    vkGetPhysicalDeviceMemoryProperties2KHR:                              PFN_vkGetPhysicalDeviceMemoryProperties2KHR;
    vkGetPhysicalDeviceProperties2KHR:                                    PFN_vkGetPhysicalDeviceProperties2KHR;
    vkGetPhysicalDeviceQueueFamilyProperties2KHR:                         PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR;
    vkGetPhysicalDeviceSparseImageFormatProperties2KHR:                   PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR;

    vkGetPhysicalDeviceSurfaceCapabilities2KHR:                           PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR;
    vkGetPhysicalDeviceSurfaceFormats2KHR:                                PFN_vkGetPhysicalDeviceSurfaceFormats2KHR;

    vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR:      PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR;
    vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR:              PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR;

    vkDestroySurfaceKHR:                                                  PFN_vkDestroySurfaceKHR;
    vkGetPhysicalDeviceSurfaceCapabilitiesKHR:                            PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR;
    vkGetPhysicalDeviceSurfaceFormatsKHR:                                 PFN_vkGetPhysicalDeviceSurfaceFormatsKHR;
    vkGetPhysicalDeviceSurfacePresentModesKHR:                            PFN_vkGetPhysicalDeviceSurfacePresentModesKHR;
    vkGetPhysicalDeviceSurfaceSupportKHR:                                 PFN_vkGetPhysicalDeviceSurfaceSupportKHR;

    vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR:              PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR;

    vkGetPhysicalDeviceVideoCapabilitiesKHR:                              PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR;
    vkGetPhysicalDeviceVideoFormatPropertiesKHR:                          PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR;

    padding_92436324:                                                     [2] PFN_vkVoidFunction;

    vkCreateWin32SurfaceKHR:                                              PFN_vkCreateWin32SurfaceKHR;
    vkGetPhysicalDeviceWin32PresentationSupportKHR:                       PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR;

    padding_b6b79326:                                                     [2] PFN_vkVoidFunction;

    padding_c5e2b5db:                                                     [2] PFN_vkVoidFunction;

    padding_52f99096:                                                     [1] PFN_vkVoidFunction;

    padding_1d7ced9a:                                                     [1] PFN_vkVoidFunction;

    padding_d9ec3901:                                                     [1] PFN_vkVoidFunction;

    vkAcquireWinrtDisplayNV:                                              PFN_vkAcquireWinrtDisplayNV;
    vkGetWinrtDisplayNV:                                                  PFN_vkGetWinrtDisplayNV;

    vkGetPhysicalDeviceCooperativeMatrixPropertiesNV:                     PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV;

    vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV:   PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV;

    vkGetPhysicalDeviceCooperativeVectorPropertiesNV:                     PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV;

    vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV:    PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV;

    vkGetPhysicalDeviceExternalImageFormatPropertiesNV:                   PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV;

    vkGetPhysicalDeviceOpticalFlowImageFormatsNV:                         PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV;

    padding_b94570ee:                                                     [1] PFN_vkVoidFunction;

    padding_9b43b57c:                                                     [2] PFN_vkVoidFunction;

    padding_bdcf11f9:                                                     [2] PFN_vkVoidFunction;

    vkGetPhysicalDeviceQueueFamilyDataGraphEngineOperationPropertiesARM:  PFN_vkGetPhysicalDeviceQueueFamilyDataGraphEngineOperationPropertiesARM;

    vkGetPhysicalDevicePresentRectanglesKHR:                              PFN_vkGetPhysicalDevicePresentRectanglesKHR;
}

/**
* Device-specific function pointer table
*/
VolkDeviceTable :: struct {
    vkAllocateCommandBuffers:                                 PFN_vkAllocateCommandBuffers;
    vkAllocateDescriptorSets:                                 PFN_vkAllocateDescriptorSets;
    vkAllocateMemory:                                         PFN_vkAllocateMemory;
    vkBeginCommandBuffer:                                     PFN_vkBeginCommandBuffer;
    vkBindBufferMemory:                                       PFN_vkBindBufferMemory;
    vkBindImageMemory:                                        PFN_vkBindImageMemory;
    vkCmdBeginQuery:                                          PFN_vkCmdBeginQuery;
    vkCmdBeginRenderPass:                                     PFN_vkCmdBeginRenderPass;
    vkCmdBindDescriptorSets:                                  PFN_vkCmdBindDescriptorSets;
    vkCmdBindIndexBuffer:                                     PFN_vkCmdBindIndexBuffer;
    vkCmdBindPipeline:                                        PFN_vkCmdBindPipeline;
    vkCmdBindVertexBuffers:                                   PFN_vkCmdBindVertexBuffers;
    vkCmdBlitImage:                                           PFN_vkCmdBlitImage;
    vkCmdClearAttachments:                                    PFN_vkCmdClearAttachments;
    vkCmdClearColorImage:                                     PFN_vkCmdClearColorImage;
    vkCmdClearDepthStencilImage:                              PFN_vkCmdClearDepthStencilImage;
    vkCmdCopyBuffer:                                          PFN_vkCmdCopyBuffer;
    vkCmdCopyBufferToImage:                                   PFN_vkCmdCopyBufferToImage;
    vkCmdCopyImage:                                           PFN_vkCmdCopyImage;
    vkCmdCopyImageToBuffer:                                   PFN_vkCmdCopyImageToBuffer;
    vkCmdCopyQueryPoolResults:                                PFN_vkCmdCopyQueryPoolResults;
    vkCmdDispatch:                                            PFN_vkCmdDispatch;
    vkCmdDispatchIndirect:                                    PFN_vkCmdDispatchIndirect;
    vkCmdDraw:                                                PFN_vkCmdDraw;
    vkCmdDrawIndexed:                                         PFN_vkCmdDrawIndexed;
    vkCmdDrawIndexedIndirect:                                 PFN_vkCmdDrawIndexedIndirect;
    vkCmdDrawIndirect:                                        PFN_vkCmdDrawIndirect;
    vkCmdEndQuery:                                            PFN_vkCmdEndQuery;
    vkCmdEndRenderPass:                                       PFN_vkCmdEndRenderPass;
    vkCmdExecuteCommands:                                     PFN_vkCmdExecuteCommands;
    vkCmdFillBuffer:                                          PFN_vkCmdFillBuffer;
    vkCmdNextSubpass:                                         PFN_vkCmdNextSubpass;
    vkCmdPipelineBarrier:                                     PFN_vkCmdPipelineBarrier;
    vkCmdPushConstants:                                       PFN_vkCmdPushConstants;
    vkCmdResetEvent:                                          PFN_vkCmdResetEvent;
    vkCmdResetQueryPool:                                      PFN_vkCmdResetQueryPool;
    vkCmdResolveImage:                                        PFN_vkCmdResolveImage;
    vkCmdSetBlendConstants:                                   PFN_vkCmdSetBlendConstants;
    vkCmdSetDepthBias:                                        PFN_vkCmdSetDepthBias;
    vkCmdSetDepthBounds:                                      PFN_vkCmdSetDepthBounds;
    vkCmdSetEvent:                                            PFN_vkCmdSetEvent;
    vkCmdSetLineWidth:                                        PFN_vkCmdSetLineWidth;
    vkCmdSetScissor:                                          PFN_vkCmdSetScissor;
    vkCmdSetStencilCompareMask:                               PFN_vkCmdSetStencilCompareMask;
    vkCmdSetStencilReference:                                 PFN_vkCmdSetStencilReference;
    vkCmdSetStencilWriteMask:                                 PFN_vkCmdSetStencilWriteMask;
    vkCmdSetViewport:                                         PFN_vkCmdSetViewport;
    vkCmdUpdateBuffer:                                        PFN_vkCmdUpdateBuffer;
    vkCmdWaitEvents:                                          PFN_vkCmdWaitEvents;
    vkCmdWriteTimestamp:                                      PFN_vkCmdWriteTimestamp;
    vkCreateBuffer:                                           PFN_vkCreateBuffer;
    vkCreateBufferView:                                       PFN_vkCreateBufferView;
    vkCreateCommandPool:                                      PFN_vkCreateCommandPool;
    vkCreateComputePipelines:                                 PFN_vkCreateComputePipelines;
    vkCreateDescriptorPool:                                   PFN_vkCreateDescriptorPool;
    vkCreateDescriptorSetLayout:                              PFN_vkCreateDescriptorSetLayout;
    vkCreateEvent:                                            PFN_vkCreateEvent;
    vkCreateFence:                                            PFN_vkCreateFence;
    vkCreateFramebuffer:                                      PFN_vkCreateFramebuffer;
    vkCreateGraphicsPipelines:                                PFN_vkCreateGraphicsPipelines;
    vkCreateImage:                                            PFN_vkCreateImage;
    vkCreateImageView:                                        PFN_vkCreateImageView;
    vkCreatePipelineCache:                                    PFN_vkCreatePipelineCache;
    vkCreatePipelineLayout:                                   PFN_vkCreatePipelineLayout;
    vkCreateQueryPool:                                        PFN_vkCreateQueryPool;
    vkCreateRenderPass:                                       PFN_vkCreateRenderPass;
    vkCreateSampler:                                          PFN_vkCreateSampler;
    vkCreateSemaphore:                                        PFN_vkCreateSemaphore;
    vkCreateShaderModule:                                     PFN_vkCreateShaderModule;
    vkDestroyBuffer:                                          PFN_vkDestroyBuffer;
    vkDestroyBufferView:                                      PFN_vkDestroyBufferView;
    vkDestroyCommandPool:                                     PFN_vkDestroyCommandPool;
    vkDestroyDescriptorPool:                                  PFN_vkDestroyDescriptorPool;
    vkDestroyDescriptorSetLayout:                             PFN_vkDestroyDescriptorSetLayout;
    vkDestroyDevice:                                          PFN_vkDestroyDevice;
    vkDestroyEvent:                                           PFN_vkDestroyEvent;
    vkDestroyFence:                                           PFN_vkDestroyFence;
    vkDestroyFramebuffer:                                     PFN_vkDestroyFramebuffer;
    vkDestroyImage:                                           PFN_vkDestroyImage;
    vkDestroyImageView:                                       PFN_vkDestroyImageView;
    vkDestroyPipeline:                                        PFN_vkDestroyPipeline;
    vkDestroyPipelineCache:                                   PFN_vkDestroyPipelineCache;
    vkDestroyPipelineLayout:                                  PFN_vkDestroyPipelineLayout;
    vkDestroyQueryPool:                                       PFN_vkDestroyQueryPool;
    vkDestroyRenderPass:                                      PFN_vkDestroyRenderPass;
    vkDestroySampler:                                         PFN_vkDestroySampler;
    vkDestroySemaphore:                                       PFN_vkDestroySemaphore;
    vkDestroyShaderModule:                                    PFN_vkDestroyShaderModule;
    vkDeviceWaitIdle:                                         PFN_vkDeviceWaitIdle;
    vkEndCommandBuffer:                                       PFN_vkEndCommandBuffer;
    vkFlushMappedMemoryRanges:                                PFN_vkFlushMappedMemoryRanges;
    vkFreeCommandBuffers:                                     PFN_vkFreeCommandBuffers;
    vkFreeDescriptorSets:                                     PFN_vkFreeDescriptorSets;
    vkFreeMemory:                                             PFN_vkFreeMemory;
    vkGetBufferMemoryRequirements:                            PFN_vkGetBufferMemoryRequirements;
    vkGetDeviceMemoryCommitment:                              PFN_vkGetDeviceMemoryCommitment;
    vkGetDeviceQueue:                                         PFN_vkGetDeviceQueue;
    vkGetEventStatus:                                         PFN_vkGetEventStatus;
    vkGetFenceStatus:                                         PFN_vkGetFenceStatus;
    vkGetImageMemoryRequirements:                             PFN_vkGetImageMemoryRequirements;
    vkGetImageSparseMemoryRequirements:                       PFN_vkGetImageSparseMemoryRequirements;
    vkGetImageSubresourceLayout:                              PFN_vkGetImageSubresourceLayout;
    vkGetPipelineCacheData:                                   PFN_vkGetPipelineCacheData;
    vkGetQueryPoolResults:                                    PFN_vkGetQueryPoolResults;
    vkGetRenderAreaGranularity:                               PFN_vkGetRenderAreaGranularity;
    vkInvalidateMappedMemoryRanges:                           PFN_vkInvalidateMappedMemoryRanges;
    vkMapMemory:                                              PFN_vkMapMemory;
    vkMergePipelineCaches:                                    PFN_vkMergePipelineCaches;
    vkQueueBindSparse:                                        PFN_vkQueueBindSparse;
    vkQueueSubmit:                                            PFN_vkQueueSubmit;
    vkQueueWaitIdle:                                          PFN_vkQueueWaitIdle;
    vkResetCommandBuffer:                                     PFN_vkResetCommandBuffer;
    vkResetCommandPool:                                       PFN_vkResetCommandPool;
    vkResetDescriptorPool:                                    PFN_vkResetDescriptorPool;
    vkResetEvent:                                             PFN_vkResetEvent;
    vkResetFences:                                            PFN_vkResetFences;
    vkSetEvent:                                               PFN_vkSetEvent;
    vkUnmapMemory:                                            PFN_vkUnmapMemory;
    vkUpdateDescriptorSets:                                   PFN_vkUpdateDescriptorSets;
    vkWaitForFences:                                          PFN_vkWaitForFences;

    vkBindBufferMemory2:                                      PFN_vkBindBufferMemory2;
    vkBindImageMemory2:                                       PFN_vkBindImageMemory2;
    vkCmdDispatchBase:                                        PFN_vkCmdDispatchBase;
    vkCmdSetDeviceMask:                                       PFN_vkCmdSetDeviceMask;
    vkCreateDescriptorUpdateTemplate:                         PFN_vkCreateDescriptorUpdateTemplate;
    vkCreateSamplerYcbcrConversion:                           PFN_vkCreateSamplerYcbcrConversion;
    vkDestroyDescriptorUpdateTemplate:                        PFN_vkDestroyDescriptorUpdateTemplate;
    vkDestroySamplerYcbcrConversion:                          PFN_vkDestroySamplerYcbcrConversion;
    vkGetBufferMemoryRequirements2:                           PFN_vkGetBufferMemoryRequirements2;
    vkGetDescriptorSetLayoutSupport:                          PFN_vkGetDescriptorSetLayoutSupport;
    vkGetDeviceGroupPeerMemoryFeatures:                       PFN_vkGetDeviceGroupPeerMemoryFeatures;
    vkGetDeviceQueue2:                                        PFN_vkGetDeviceQueue2;
    vkGetImageMemoryRequirements2:                            PFN_vkGetImageMemoryRequirements2;
    vkGetImageSparseMemoryRequirements2:                      PFN_vkGetImageSparseMemoryRequirements2;
    vkTrimCommandPool:                                        PFN_vkTrimCommandPool;
    vkUpdateDescriptorSetWithTemplate:                        PFN_vkUpdateDescriptorSetWithTemplate;

    vkCmdBeginRenderPass2:                                    PFN_vkCmdBeginRenderPass2;
    vkCmdDrawIndexedIndirectCount:                            PFN_vkCmdDrawIndexedIndirectCount;
    vkCmdDrawIndirectCount:                                   PFN_vkCmdDrawIndirectCount;
    vkCmdEndRenderPass2:                                      PFN_vkCmdEndRenderPass2;
    vkCmdNextSubpass2:                                        PFN_vkCmdNextSubpass2;
    vkCreateRenderPass2:                                      PFN_vkCreateRenderPass2;
    vkGetBufferDeviceAddress:                                 PFN_vkGetBufferDeviceAddress;
    vkGetBufferOpaqueCaptureAddress:                          PFN_vkGetBufferOpaqueCaptureAddress;
    vkGetDeviceMemoryOpaqueCaptureAddress:                    PFN_vkGetDeviceMemoryOpaqueCaptureAddress;
    vkGetSemaphoreCounterValue:                               PFN_vkGetSemaphoreCounterValue;
    vkResetQueryPool:                                         PFN_vkResetQueryPool;
    vkSignalSemaphore:                                        PFN_vkSignalSemaphore;
    vkWaitSemaphores:                                         PFN_vkWaitSemaphores;

    vkCmdBeginRendering:                                      PFN_vkCmdBeginRendering;
    vkCmdBindVertexBuffers2:                                  PFN_vkCmdBindVertexBuffers2;
    vkCmdBlitImage2:                                          PFN_vkCmdBlitImage2;
    vkCmdCopyBuffer2:                                         PFN_vkCmdCopyBuffer2;
    vkCmdCopyBufferToImage2:                                  PFN_vkCmdCopyBufferToImage2;
    vkCmdCopyImage2:                                          PFN_vkCmdCopyImage2;
    vkCmdCopyImageToBuffer2:                                  PFN_vkCmdCopyImageToBuffer2;
    vkCmdEndRendering:                                        PFN_vkCmdEndRendering;
    vkCmdPipelineBarrier2:                                    PFN_vkCmdPipelineBarrier2;
    vkCmdResetEvent2:                                         PFN_vkCmdResetEvent2;
    vkCmdResolveImage2:                                       PFN_vkCmdResolveImage2;
    vkCmdSetCullMode:                                         PFN_vkCmdSetCullMode;
    vkCmdSetDepthBiasEnable:                                  PFN_vkCmdSetDepthBiasEnable;
    vkCmdSetDepthBoundsTestEnable:                            PFN_vkCmdSetDepthBoundsTestEnable;
    vkCmdSetDepthCompareOp:                                   PFN_vkCmdSetDepthCompareOp;
    vkCmdSetDepthTestEnable:                                  PFN_vkCmdSetDepthTestEnable;
    vkCmdSetDepthWriteEnable:                                 PFN_vkCmdSetDepthWriteEnable;
    vkCmdSetEvent2:                                           PFN_vkCmdSetEvent2;
    vkCmdSetFrontFace:                                        PFN_vkCmdSetFrontFace;
    vkCmdSetPrimitiveRestartEnable:                           PFN_vkCmdSetPrimitiveRestartEnable;
    vkCmdSetPrimitiveTopology:                                PFN_vkCmdSetPrimitiveTopology;
    vkCmdSetRasterizerDiscardEnable:                          PFN_vkCmdSetRasterizerDiscardEnable;
    vkCmdSetScissorWithCount:                                 PFN_vkCmdSetScissorWithCount;
    vkCmdSetStencilOp:                                        PFN_vkCmdSetStencilOp;
    vkCmdSetStencilTestEnable:                                PFN_vkCmdSetStencilTestEnable;
    vkCmdSetViewportWithCount:                                PFN_vkCmdSetViewportWithCount;
    vkCmdWaitEvents2:                                         PFN_vkCmdWaitEvents2;
    vkCmdWriteTimestamp2:                                     PFN_vkCmdWriteTimestamp2;
    vkCreatePrivateDataSlot:                                  PFN_vkCreatePrivateDataSlot;
    vkDestroyPrivateDataSlot:                                 PFN_vkDestroyPrivateDataSlot;
    vkGetDeviceBufferMemoryRequirements:                      PFN_vkGetDeviceBufferMemoryRequirements;
    vkGetDeviceImageMemoryRequirements:                       PFN_vkGetDeviceImageMemoryRequirements;
    vkGetDeviceImageSparseMemoryRequirements:                 PFN_vkGetDeviceImageSparseMemoryRequirements;
    vkGetPrivateData:                                         PFN_vkGetPrivateData;
    vkQueueSubmit2:                                           PFN_vkQueueSubmit2;
    vkSetPrivateData:                                         PFN_vkSetPrivateData;

    vkCmdBindDescriptorSets2:                                 PFN_vkCmdBindDescriptorSets2;
    vkCmdBindIndexBuffer2:                                    PFN_vkCmdBindIndexBuffer2;
    vkCmdPushConstants2:                                      PFN_vkCmdPushConstants2;
    vkCmdPushDescriptorSet:                                   PFN_vkCmdPushDescriptorSet;
    vkCmdPushDescriptorSet2:                                  PFN_vkCmdPushDescriptorSet2;
    vkCmdPushDescriptorSetWithTemplate:                       PFN_vkCmdPushDescriptorSetWithTemplate;
    vkCmdPushDescriptorSetWithTemplate2:                      PFN_vkCmdPushDescriptorSetWithTemplate2;
    vkCmdSetLineStipple:                                      PFN_vkCmdSetLineStipple;
    vkCmdSetRenderingAttachmentLocations:                     PFN_vkCmdSetRenderingAttachmentLocations;
    vkCmdSetRenderingInputAttachmentIndices:                  PFN_vkCmdSetRenderingInputAttachmentIndices;
    vkCopyImageToImage:                                       PFN_vkCopyImageToImage;
    vkCopyImageToMemory:                                      PFN_vkCopyImageToMemory;
    vkCopyMemoryToImage:                                      PFN_vkCopyMemoryToImage;
    vkGetDeviceImageSubresourceLayout:                        PFN_vkGetDeviceImageSubresourceLayout;
    vkGetImageSubresourceLayout2:                             PFN_vkGetImageSubresourceLayout2;
    vkGetRenderingAreaGranularity:                            PFN_vkGetRenderingAreaGranularity;
    vkMapMemory2:                                             PFN_vkMapMemory2;
    vkTransitionImageLayout:                                  PFN_vkTransitionImageLayout;
    vkUnmapMemory2:                                           PFN_vkUnmapMemory2;

    padding_9d3e2bba:                                         [7] PFN_vkVoidFunction;

    vkAntiLagUpdateAMD:                                       PFN_vkAntiLagUpdateAMD;

    vkCmdWriteBufferMarkerAMD:                                PFN_vkCmdWriteBufferMarkerAMD;

    vkCmdWriteBufferMarker2AMD:                               PFN_vkCmdWriteBufferMarker2AMD;

    vkSetLocalDimmingAMD:                                     PFN_vkSetLocalDimmingAMD;

    vkCmdDrawIndexedIndirectCountAMD:                         PFN_vkCmdDrawIndexedIndirectCountAMD;
    vkCmdDrawIndirectCountAMD:                                PFN_vkCmdDrawIndirectCountAMD;

    vkCmdBeginGpaSampleAMD:                                   PFN_vkCmdBeginGpaSampleAMD;
    vkCmdBeginGpaSessionAMD:                                  PFN_vkCmdBeginGpaSessionAMD;
    vkCmdCopyGpaSessionResultsAMD:                            PFN_vkCmdCopyGpaSessionResultsAMD;
    vkCmdEndGpaSampleAMD:                                     PFN_vkCmdEndGpaSampleAMD;
    vkCmdEndGpaSessionAMD:                                    PFN_vkCmdEndGpaSessionAMD;
    vkCreateGpaSessionAMD:                                    PFN_vkCreateGpaSessionAMD;
    vkDestroyGpaSessionAMD:                                   PFN_vkDestroyGpaSessionAMD;
    vkGetGpaDeviceClockInfoAMD:                               PFN_vkGetGpaDeviceClockInfoAMD;
    vkGetGpaSessionResultsAMD:                                PFN_vkGetGpaSessionResultsAMD;
    vkGetGpaSessionStatusAMD:                                 PFN_vkGetGpaSessionStatusAMD;
    vkResetGpaSessionAMD:                                     PFN_vkResetGpaSessionAMD;
    vkSetGpaDeviceClockModeAMD:                               PFN_vkSetGpaDeviceClockModeAMD;

    vkGetShaderInfoAMD:                                       PFN_vkGetShaderInfoAMD;

    padding_c67b1beb:                                         [2] PFN_vkVoidFunction;

    vkBindDataGraphPipelineSessionMemoryARM:                  PFN_vkBindDataGraphPipelineSessionMemoryARM;
    vkCmdDispatchDataGraphARM:                                PFN_vkCmdDispatchDataGraphARM;
    vkCreateDataGraphPipelineSessionARM:                      PFN_vkCreateDataGraphPipelineSessionARM;
    vkCreateDataGraphPipelinesARM:                            PFN_vkCreateDataGraphPipelinesARM;
    vkDestroyDataGraphPipelineSessionARM:                     PFN_vkDestroyDataGraphPipelineSessionARM;
    vkGetDataGraphPipelineAvailablePropertiesARM:             PFN_vkGetDataGraphPipelineAvailablePropertiesARM;
    vkGetDataGraphPipelinePropertiesARM:                      PFN_vkGetDataGraphPipelinePropertiesARM;
    vkGetDataGraphPipelineSessionBindPointRequirementsARM:    PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM;
    vkGetDataGraphPipelineSessionMemoryRequirementsARM:       PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM;

    vkCmdSetDispatchParametersARM:                            PFN_vkCmdSetDispatchParametersARM;

    vkClearShaderInstrumentationMetricsARM:                   PFN_vkClearShaderInstrumentationMetricsARM;
    vkCmdBeginShaderInstrumentationARM:                       PFN_vkCmdBeginShaderInstrumentationARM;
    vkCmdEndShaderInstrumentationARM:                         PFN_vkCmdEndShaderInstrumentationARM;
    vkCreateShaderInstrumentationARM:                         PFN_vkCreateShaderInstrumentationARM;
    vkDestroyShaderInstrumentationARM:                        PFN_vkDestroyShaderInstrumentationARM;
    vkGetShaderInstrumentationValuesARM:                      PFN_vkGetShaderInstrumentationValuesARM;

    vkBindTensorMemoryARM:                                    PFN_vkBindTensorMemoryARM;
    vkCmdCopyTensorARM:                                       PFN_vkCmdCopyTensorARM;
    vkCreateTensorARM:                                        PFN_vkCreateTensorARM;
    vkCreateTensorViewARM:                                    PFN_vkCreateTensorViewARM;
    vkDestroyTensorARM:                                       PFN_vkDestroyTensorARM;
    vkDestroyTensorViewARM:                                   PFN_vkDestroyTensorViewARM;
    vkGetDeviceTensorMemoryRequirementsARM:                   PFN_vkGetDeviceTensorMemoryRequirementsARM;
    vkGetTensorMemoryRequirementsARM:                         PFN_vkGetTensorMemoryRequirementsARM;

    vkGetTensorOpaqueCaptureDescriptorDataARM:                PFN_vkGetTensorOpaqueCaptureDescriptorDataARM;
    vkGetTensorViewOpaqueCaptureDescriptorDataARM:            PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM;

    vkCmdSetAttachmentFeedbackLoopEnableEXT:                  PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT;

    vkGetBufferDeviceAddressEXT:                              PFN_vkGetBufferDeviceAddressEXT;

    vkGetCalibratedTimestampsEXT:                             PFN_vkGetCalibratedTimestampsEXT;

    vkCmdSetColorWriteEnableEXT:                              PFN_vkCmdSetColorWriteEnableEXT;

    vkCmdBeginConditionalRenderingEXT:                        PFN_vkCmdBeginConditionalRenderingEXT;
    vkCmdEndConditionalRenderingEXT:                          PFN_vkCmdEndConditionalRenderingEXT;

    vkCmdBeginCustomResolveEXT:                               PFN_vkCmdBeginCustomResolveEXT;

    vkCmdDebugMarkerBeginEXT:                                 PFN_vkCmdDebugMarkerBeginEXT;
    vkCmdDebugMarkerEndEXT:                                   PFN_vkCmdDebugMarkerEndEXT;
    vkCmdDebugMarkerInsertEXT:                                PFN_vkCmdDebugMarkerInsertEXT;
    vkDebugMarkerSetObjectNameEXT:                            PFN_vkDebugMarkerSetObjectNameEXT;
    vkDebugMarkerSetObjectTagEXT:                             PFN_vkDebugMarkerSetObjectTagEXT;

    vkCmdSetDepthBias2EXT:                                    PFN_vkCmdSetDepthBias2EXT;

    vkCmdBindDescriptorBufferEmbeddedSamplersEXT:             PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT;
    vkCmdBindDescriptorBuffersEXT:                            PFN_vkCmdBindDescriptorBuffersEXT;
    vkCmdSetDescriptorBufferOffsetsEXT:                       PFN_vkCmdSetDescriptorBufferOffsetsEXT;
    vkGetBufferOpaqueCaptureDescriptorDataEXT:                PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT;
    vkGetDescriptorEXT:                                       PFN_vkGetDescriptorEXT;
    vkGetDescriptorSetLayoutBindingOffsetEXT:                 PFN_vkGetDescriptorSetLayoutBindingOffsetEXT;
    vkGetDescriptorSetLayoutSizeEXT:                          PFN_vkGetDescriptorSetLayoutSizeEXT;
    vkGetImageOpaqueCaptureDescriptorDataEXT:                 PFN_vkGetImageOpaqueCaptureDescriptorDataEXT;
    vkGetImageViewOpaqueCaptureDescriptorDataEXT:             PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT;
    vkGetSamplerOpaqueCaptureDescriptorDataEXT:               PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT;

    vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT: PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT;

    vkCmdBindResourceHeapEXT:                                 PFN_vkCmdBindResourceHeapEXT;
    vkCmdBindSamplerHeapEXT:                                  PFN_vkCmdBindSamplerHeapEXT;
    vkCmdPushDataEXT:                                         PFN_vkCmdPushDataEXT;
    vkGetImageOpaqueCaptureDataEXT:                           PFN_vkGetImageOpaqueCaptureDataEXT;
    vkWriteResourceDescriptorsEXT:                            PFN_vkWriteResourceDescriptorsEXT;
    vkWriteSamplerDescriptorsEXT:                             PFN_vkWriteSamplerDescriptorsEXT;

    vkRegisterCustomBorderColorEXT:                           PFN_vkRegisterCustomBorderColorEXT;
    vkUnregisterCustomBorderColorEXT:                         PFN_vkUnregisterCustomBorderColorEXT;

    vkGetTensorOpaqueCaptureDataARM:                          PFN_vkGetTensorOpaqueCaptureDataARM;

    vkGetDeviceFaultInfoEXT:                                  PFN_vkGetDeviceFaultInfoEXT;

    vkCmdExecuteGeneratedCommandsEXT:                         PFN_vkCmdExecuteGeneratedCommandsEXT;
    vkCmdPreprocessGeneratedCommandsEXT:                      PFN_vkCmdPreprocessGeneratedCommandsEXT;
    vkCreateIndirectCommandsLayoutEXT:                        PFN_vkCreateIndirectCommandsLayoutEXT;
    vkCreateIndirectExecutionSetEXT:                          PFN_vkCreateIndirectExecutionSetEXT;
    vkDestroyIndirectCommandsLayoutEXT:                       PFN_vkDestroyIndirectCommandsLayoutEXT;
    vkDestroyIndirectExecutionSetEXT:                         PFN_vkDestroyIndirectExecutionSetEXT;
    vkGetGeneratedCommandsMemoryRequirementsEXT:              PFN_vkGetGeneratedCommandsMemoryRequirementsEXT;
    vkUpdateIndirectExecutionSetPipelineEXT:                  PFN_vkUpdateIndirectExecutionSetPipelineEXT;
    vkUpdateIndirectExecutionSetShaderEXT:                    PFN_vkUpdateIndirectExecutionSetShaderEXT;

    vkCmdSetDiscardRectangleEXT:                              PFN_vkCmdSetDiscardRectangleEXT;

    vkCmdSetDiscardRectangleEnableEXT:                        PFN_vkCmdSetDiscardRectangleEnableEXT;
    vkCmdSetDiscardRectangleModeEXT:                          PFN_vkCmdSetDiscardRectangleModeEXT;

    vkDisplayPowerControlEXT:                                 PFN_vkDisplayPowerControlEXT;
    vkGetSwapchainCounterEXT:                                 PFN_vkGetSwapchainCounterEXT;
    vkRegisterDeviceEventEXT:                                 PFN_vkRegisterDeviceEventEXT;
    vkRegisterDisplayEventEXT:                                PFN_vkRegisterDisplayEventEXT;

    vkGetMemoryHostPointerPropertiesEXT:                      PFN_vkGetMemoryHostPointerPropertiesEXT;

    padding_37d43fb:                                          [2] PFN_vkVoidFunction;

    vkCmdEndRendering2EXT:                                    PFN_vkCmdEndRendering2EXT;

    vkAcquireFullScreenExclusiveModeEXT:                      PFN_vkAcquireFullScreenExclusiveModeEXT;
    vkReleaseFullScreenExclusiveModeEXT:                      PFN_vkReleaseFullScreenExclusiveModeEXT;

    vkGetDeviceGroupSurfacePresentModes2EXT:                  PFN_vkGetDeviceGroupSurfacePresentModes2EXT;

    vkSetHdrMetadataEXT:                                      PFN_vkSetHdrMetadataEXT;

    vkCopyImageToImageEXT:                                    PFN_vkCopyImageToImageEXT;
    vkCopyImageToMemoryEXT:                                   PFN_vkCopyImageToMemoryEXT;
    vkCopyMemoryToImageEXT:                                   PFN_vkCopyMemoryToImageEXT;
    vkTransitionImageLayoutEXT:                               PFN_vkTransitionImageLayoutEXT;

    vkResetQueryPoolEXT:                                      PFN_vkResetQueryPoolEXT;

    vkGetImageDrmFormatModifierPropertiesEXT:                 PFN_vkGetImageDrmFormatModifierPropertiesEXT;

    vkCmdSetLineStippleEXT:                                   PFN_vkCmdSetLineStippleEXT;

    vkCmdDecompressMemoryEXT:                                 PFN_vkCmdDecompressMemoryEXT;
    vkCmdDecompressMemoryIndirectCountEXT:                    PFN_vkCmdDecompressMemoryIndirectCountEXT;

    vkCmdDrawMeshTasksEXT:                                    PFN_vkCmdDrawMeshTasksEXT;
    vkCmdDrawMeshTasksIndirectEXT:                            PFN_vkCmdDrawMeshTasksIndirectEXT;

    vkCmdDrawMeshTasksIndirectCountEXT:                       PFN_vkCmdDrawMeshTasksIndirectCountEXT;

    padding_df21f735:                                         [1] PFN_vkVoidFunction;

    vkCmdDrawMultiEXT:                                        PFN_vkCmdDrawMultiEXT;
    vkCmdDrawMultiIndexedEXT:                                 PFN_vkCmdDrawMultiIndexedEXT;

    vkBuildMicromapsEXT:                                      PFN_vkBuildMicromapsEXT;
    vkCmdBuildMicromapsEXT:                                   PFN_vkCmdBuildMicromapsEXT;
    vkCmdCopyMemoryToMicromapEXT:                             PFN_vkCmdCopyMemoryToMicromapEXT;
    vkCmdCopyMicromapEXT:                                     PFN_vkCmdCopyMicromapEXT;
    vkCmdCopyMicromapToMemoryEXT:                             PFN_vkCmdCopyMicromapToMemoryEXT;
    vkCmdWriteMicromapsPropertiesEXT:                         PFN_vkCmdWriteMicromapsPropertiesEXT;
    vkCopyMemoryToMicromapEXT:                                PFN_vkCopyMemoryToMicromapEXT;
    vkCopyMicromapEXT:                                        PFN_vkCopyMicromapEXT;
    vkCopyMicromapToMemoryEXT:                                PFN_vkCopyMicromapToMemoryEXT;
    vkCreateMicromapEXT:                                      PFN_vkCreateMicromapEXT;
    vkDestroyMicromapEXT:                                     PFN_vkDestroyMicromapEXT;
    vkGetDeviceMicromapCompatibilityEXT:                      PFN_vkGetDeviceMicromapCompatibilityEXT;
    vkGetMicromapBuildSizesEXT:                               PFN_vkGetMicromapBuildSizesEXT;
    vkWriteMicromapsPropertiesEXT:                            PFN_vkWriteMicromapsPropertiesEXT;

    vkSetDeviceMemoryPriorityEXT:                             PFN_vkSetDeviceMemoryPriorityEXT;

    vkGetPipelinePropertiesEXT:                               PFN_vkGetPipelinePropertiesEXT;

    vkGetPastPresentationTimingEXT:                           PFN_vkGetPastPresentationTimingEXT;
    vkGetSwapchainTimeDomainPropertiesEXT:                    PFN_vkGetSwapchainTimeDomainPropertiesEXT;
    vkGetSwapchainTimingPropertiesEXT:                        PFN_vkGetSwapchainTimingPropertiesEXT;
    vkSetSwapchainPresentTimingQueueSizeEXT:                  PFN_vkSetSwapchainPresentTimingQueueSizeEXT;

    vkCmdSetPrimitiveRestartIndexEXT:                         PFN_vkCmdSetPrimitiveRestartIndexEXT;

    vkCreatePrivateDataSlotEXT:                               PFN_vkCreatePrivateDataSlotEXT;
    vkDestroyPrivateDataSlotEXT:                              PFN_vkDestroyPrivateDataSlotEXT;
    vkGetPrivateDataEXT:                                      PFN_vkGetPrivateDataEXT;
    vkSetPrivateDataEXT:                                      PFN_vkSetPrivateDataEXT;

    vkCmdSetSampleLocationsEXT:                               PFN_vkCmdSetSampleLocationsEXT;

    vkGetShaderModuleCreateInfoIdentifierEXT:                 PFN_vkGetShaderModuleCreateInfoIdentifierEXT;
    vkGetShaderModuleIdentifierEXT:                           PFN_vkGetShaderModuleIdentifierEXT;

    vkCmdBindShadersEXT:                                      PFN_vkCmdBindShadersEXT;
    vkCreateShadersEXT:                                       PFN_vkCreateShadersEXT;
    vkDestroyShaderEXT:                                       PFN_vkDestroyShaderEXT;
    vkGetShaderBinaryDataEXT:                                 PFN_vkGetShaderBinaryDataEXT;

    vkReleaseSwapchainImagesEXT:                              PFN_vkReleaseSwapchainImagesEXT;

    vkCmdBeginQueryIndexedEXT:                                PFN_vkCmdBeginQueryIndexedEXT;
    vkCmdBeginTransformFeedbackEXT:                           PFN_vkCmdBeginTransformFeedbackEXT;
    vkCmdBindTransformFeedbackBuffersEXT:                     PFN_vkCmdBindTransformFeedbackBuffersEXT;
    vkCmdDrawIndirectByteCountEXT:                            PFN_vkCmdDrawIndirectByteCountEXT;
    vkCmdEndQueryIndexedEXT:                                  PFN_vkCmdEndQueryIndexedEXT;
    vkCmdEndTransformFeedbackEXT:                             PFN_vkCmdEndTransformFeedbackEXT;

    vkCreateValidationCacheEXT:                               PFN_vkCreateValidationCacheEXT;
    vkDestroyValidationCacheEXT:                              PFN_vkDestroyValidationCacheEXT;
    vkGetValidationCacheDataEXT:                              PFN_vkGetValidationCacheDataEXT;
    vkMergeValidationCachesEXT:                               PFN_vkMergeValidationCachesEXT;

    padding_8eaa27bc:                                         [5] PFN_vkVoidFunction;

    padding_e3cb8a67:                                         [2] PFN_vkVoidFunction;

    padding_3df6f656:                                         [2] PFN_vkVoidFunction;

    vkGetPastPresentationTimingGOOGLE:                        PFN_vkGetPastPresentationTimingGOOGLE;
    vkGetRefreshCycleDurationGOOGLE:                          PFN_vkGetRefreshCycleDurationGOOGLE;

    vkCmdDrawClusterHUAWEI:                                   PFN_vkCmdDrawClusterHUAWEI;
    vkCmdDrawClusterIndirectHUAWEI:                           PFN_vkCmdDrawClusterIndirectHUAWEI;

    vkCmdBindInvocationMaskHUAWEI:                            PFN_vkCmdBindInvocationMaskHUAWEI;

    vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI:          PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI;

    vkCmdSubpassShadingHUAWEI:                                PFN_vkCmdSubpassShadingHUAWEI;

    vkAcquirePerformanceConfigurationINTEL:                   PFN_vkAcquirePerformanceConfigurationINTEL;
    vkCmdSetPerformanceMarkerINTEL:                           PFN_vkCmdSetPerformanceMarkerINTEL;
    vkCmdSetPerformanceOverrideINTEL:                         PFN_vkCmdSetPerformanceOverrideINTEL;
    vkCmdSetPerformanceStreamMarkerINTEL:                     PFN_vkCmdSetPerformanceStreamMarkerINTEL;
    vkGetPerformanceParameterINTEL:                           PFN_vkGetPerformanceParameterINTEL;
    vkInitializePerformanceApiINTEL:                          PFN_vkInitializePerformanceApiINTEL;
    vkQueueSetPerformanceConfigurationINTEL:                  PFN_vkQueueSetPerformanceConfigurationINTEL;
    vkReleasePerformanceConfigurationINTEL:                   PFN_vkReleasePerformanceConfigurationINTEL;
    vkUninitializePerformanceApiINTEL:                        PFN_vkUninitializePerformanceApiINTEL;

    vkBuildAccelerationStructuresKHR:                         PFN_vkBuildAccelerationStructuresKHR;
    vkCmdBuildAccelerationStructuresIndirectKHR:              PFN_vkCmdBuildAccelerationStructuresIndirectKHR;
    vkCmdBuildAccelerationStructuresKHR:                      PFN_vkCmdBuildAccelerationStructuresKHR;
    vkCmdCopyAccelerationStructureKHR:                        PFN_vkCmdCopyAccelerationStructureKHR;
    vkCmdCopyAccelerationStructureToMemoryKHR:                PFN_vkCmdCopyAccelerationStructureToMemoryKHR;
    vkCmdCopyMemoryToAccelerationStructureKHR:                PFN_vkCmdCopyMemoryToAccelerationStructureKHR;
    vkCmdWriteAccelerationStructuresPropertiesKHR:            PFN_vkCmdWriteAccelerationStructuresPropertiesKHR;
    vkCopyAccelerationStructureKHR:                           PFN_vkCopyAccelerationStructureKHR;
    vkCopyAccelerationStructureToMemoryKHR:                   PFN_vkCopyAccelerationStructureToMemoryKHR;
    vkCopyMemoryToAccelerationStructureKHR:                   PFN_vkCopyMemoryToAccelerationStructureKHR;
    vkCreateAccelerationStructureKHR:                         PFN_vkCreateAccelerationStructureKHR;
    vkDestroyAccelerationStructureKHR:                        PFN_vkDestroyAccelerationStructureKHR;
    vkGetAccelerationStructureBuildSizesKHR:                  PFN_vkGetAccelerationStructureBuildSizesKHR;
    vkGetAccelerationStructureDeviceAddressKHR:               PFN_vkGetAccelerationStructureDeviceAddressKHR;
    vkGetDeviceAccelerationStructureCompatibilityKHR:         PFN_vkGetDeviceAccelerationStructureCompatibilityKHR;
    vkWriteAccelerationStructuresPropertiesKHR:               PFN_vkWriteAccelerationStructuresPropertiesKHR;

    vkBindBufferMemory2KHR:                                   PFN_vkBindBufferMemory2KHR;
    vkBindImageMemory2KHR:                                    PFN_vkBindImageMemory2KHR;

    vkGetBufferDeviceAddressKHR:                              PFN_vkGetBufferDeviceAddressKHR;
    vkGetBufferOpaqueCaptureAddressKHR:                       PFN_vkGetBufferOpaqueCaptureAddressKHR;
    vkGetDeviceMemoryOpaqueCaptureAddressKHR:                 PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR;

    vkGetCalibratedTimestampsKHR:                             PFN_vkGetCalibratedTimestampsKHR;

    vkCmdBlitImage2KHR:                                       PFN_vkCmdBlitImage2KHR;
    vkCmdCopyBuffer2KHR:                                      PFN_vkCmdCopyBuffer2KHR;
    vkCmdCopyBufferToImage2KHR:                               PFN_vkCmdCopyBufferToImage2KHR;
    vkCmdCopyImage2KHR:                                       PFN_vkCmdCopyImage2KHR;
    vkCmdCopyImageToBuffer2KHR:                               PFN_vkCmdCopyImageToBuffer2KHR;
    vkCmdResolveImage2KHR:                                    PFN_vkCmdResolveImage2KHR;

    vkCmdCopyMemoryIndirectKHR:                               PFN_vkCmdCopyMemoryIndirectKHR;
    vkCmdCopyMemoryToImageIndirectKHR:                        PFN_vkCmdCopyMemoryToImageIndirectKHR;

    vkCmdBeginRenderPass2KHR:                                 PFN_vkCmdBeginRenderPass2KHR;
    vkCmdEndRenderPass2KHR:                                   PFN_vkCmdEndRenderPass2KHR;
    vkCmdNextSubpass2KHR:                                     PFN_vkCmdNextSubpass2KHR;
    vkCreateRenderPass2KHR:                                   PFN_vkCreateRenderPass2KHR;

    vkCreateDeferredOperationKHR:                             PFN_vkCreateDeferredOperationKHR;
    vkDeferredOperationJoinKHR:                               PFN_vkDeferredOperationJoinKHR;
    vkDestroyDeferredOperationKHR:                            PFN_vkDestroyDeferredOperationKHR;
    vkGetDeferredOperationMaxConcurrencyKHR:                  PFN_vkGetDeferredOperationMaxConcurrencyKHR;
    vkGetDeferredOperationResultKHR:                          PFN_vkGetDeferredOperationResultKHR;

    vkCreateDescriptorUpdateTemplateKHR:                      PFN_vkCreateDescriptorUpdateTemplateKHR;
    vkDestroyDescriptorUpdateTemplateKHR:                     PFN_vkDestroyDescriptorUpdateTemplateKHR;
    vkUpdateDescriptorSetWithTemplateKHR:                     PFN_vkUpdateDescriptorSetWithTemplateKHR;

    vkCmdBindIndexBuffer3KHR:                                 PFN_vkCmdBindIndexBuffer3KHR;
    vkCmdBindVertexBuffers3KHR:                               PFN_vkCmdBindVertexBuffers3KHR;
    vkCmdCopyImageToMemoryKHR:                                PFN_vkCmdCopyImageToMemoryKHR;
    vkCmdCopyMemoryKHR:                                       PFN_vkCmdCopyMemoryKHR;
    vkCmdCopyMemoryToImageKHR:                                PFN_vkCmdCopyMemoryToImageKHR;
    vkCmdCopyQueryPoolResultsToMemoryKHR:                     PFN_vkCmdCopyQueryPoolResultsToMemoryKHR;
    vkCmdDispatchIndirect2KHR:                                PFN_vkCmdDispatchIndirect2KHR;
    vkCmdDrawIndexedIndirect2KHR:                             PFN_vkCmdDrawIndexedIndirect2KHR;
    vkCmdDrawIndirect2KHR:                                    PFN_vkCmdDrawIndirect2KHR;
    vkCmdFillMemoryKHR:                                       PFN_vkCmdFillMemoryKHR;
    vkCmdUpdateMemoryKHR:                                     PFN_vkCmdUpdateMemoryKHR;

    vkCmdDrawIndexedIndirectCount2KHR:                        PFN_vkCmdDrawIndexedIndirectCount2KHR;
    vkCmdDrawIndirectCount2KHR:                               PFN_vkCmdDrawIndirectCount2KHR;

    vkCmdBeginConditionalRendering2EXT:                       PFN_vkCmdBeginConditionalRendering2EXT;

    vkCmdBeginTransformFeedback2EXT:                          PFN_vkCmdBeginTransformFeedback2EXT;
    vkCmdBindTransformFeedbackBuffers2EXT:                    PFN_vkCmdBindTransformFeedbackBuffers2EXT;
    vkCmdDrawIndirectByteCount2EXT:                           PFN_vkCmdDrawIndirectByteCount2EXT;
    vkCmdEndTransformFeedback2EXT:                            PFN_vkCmdEndTransformFeedback2EXT;

    vkCmdDrawMeshTasksIndirect2EXT:                           PFN_vkCmdDrawMeshTasksIndirect2EXT;

    vkCmdDrawMeshTasksIndirectCount2EXT:                      PFN_vkCmdDrawMeshTasksIndirectCount2EXT;

    vkCmdWriteMarkerToMemoryAMD:                              PFN_vkCmdWriteMarkerToMemoryAMD;

    vkCreateAccelerationStructure2KHR:                        PFN_vkCreateAccelerationStructure2KHR;

    vkGetDeviceFaultDebugInfoKHR:                             PFN_vkGetDeviceFaultDebugInfoKHR;
    vkGetDeviceFaultReportsKHR:                               PFN_vkGetDeviceFaultReportsKHR;

    vkCmdDispatchBaseKHR:                                     PFN_vkCmdDispatchBaseKHR;
    vkCmdSetDeviceMaskKHR:                                    PFN_vkCmdSetDeviceMaskKHR;
    vkGetDeviceGroupPeerMemoryFeaturesKHR:                    PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR;

    vkCreateSharedSwapchainsKHR:                              PFN_vkCreateSharedSwapchainsKHR;

    vkCmdDrawIndexedIndirectCountKHR:                         PFN_vkCmdDrawIndexedIndirectCountKHR;
    vkCmdDrawIndirectCountKHR:                                PFN_vkCmdDrawIndirectCountKHR;

    vkCmdBeginRenderingKHR:                                   PFN_vkCmdBeginRenderingKHR;
    vkCmdEndRenderingKHR:                                     PFN_vkCmdEndRenderingKHR;

    vkCmdSetRenderingAttachmentLocationsKHR:                  PFN_vkCmdSetRenderingAttachmentLocationsKHR;
    vkCmdSetRenderingInputAttachmentIndicesKHR:               PFN_vkCmdSetRenderingInputAttachmentIndicesKHR;

    vkGetFenceFdKHR:                                          PFN_vkGetFenceFdKHR;
    vkImportFenceFdKHR:                                       PFN_vkImportFenceFdKHR;

    vkGetFenceWin32HandleKHR:                                 PFN_vkGetFenceWin32HandleKHR;
    vkImportFenceWin32HandleKHR:                              PFN_vkImportFenceWin32HandleKHR;

    vkGetMemoryFdKHR:                                         PFN_vkGetMemoryFdKHR;
    vkGetMemoryFdPropertiesKHR:                               PFN_vkGetMemoryFdPropertiesKHR;

    vkGetMemoryWin32HandleKHR:                                PFN_vkGetMemoryWin32HandleKHR;
    vkGetMemoryWin32HandlePropertiesKHR:                      PFN_vkGetMemoryWin32HandlePropertiesKHR;

    vkGetSemaphoreFdKHR:                                      PFN_vkGetSemaphoreFdKHR;
    vkImportSemaphoreFdKHR:                                   PFN_vkImportSemaphoreFdKHR;

    vkGetSemaphoreWin32HandleKHR:                             PFN_vkGetSemaphoreWin32HandleKHR;
    vkImportSemaphoreWin32HandleKHR:                          PFN_vkImportSemaphoreWin32HandleKHR;

    vkCmdSetFragmentShadingRateKHR:                           PFN_vkCmdSetFragmentShadingRateKHR;

    vkGetBufferMemoryRequirements2KHR:                        PFN_vkGetBufferMemoryRequirements2KHR;
    vkGetImageMemoryRequirements2KHR:                         PFN_vkGetImageMemoryRequirements2KHR;
    vkGetImageSparseMemoryRequirements2KHR:                   PFN_vkGetImageSparseMemoryRequirements2KHR;

    vkCmdSetLineStippleKHR:                                   PFN_vkCmdSetLineStippleKHR;

    vkTrimCommandPoolKHR:                                     PFN_vkTrimCommandPoolKHR;

    vkCmdEndRendering2KHR:                                    PFN_vkCmdEndRendering2KHR;

    vkGetDescriptorSetLayoutSupportKHR:                       PFN_vkGetDescriptorSetLayoutSupportKHR;

    vkGetDeviceBufferMemoryRequirementsKHR:                   PFN_vkGetDeviceBufferMemoryRequirementsKHR;
    vkGetDeviceImageMemoryRequirementsKHR:                    PFN_vkGetDeviceImageMemoryRequirementsKHR;
    vkGetDeviceImageSparseMemoryRequirementsKHR:              PFN_vkGetDeviceImageSparseMemoryRequirementsKHR;

    vkCmdBindIndexBuffer2KHR:                                 PFN_vkCmdBindIndexBuffer2KHR;
    vkGetDeviceImageSubresourceLayoutKHR:                     PFN_vkGetDeviceImageSubresourceLayoutKHR;
    vkGetImageSubresourceLayout2KHR:                          PFN_vkGetImageSubresourceLayout2KHR;
    vkGetRenderingAreaGranularityKHR:                         PFN_vkGetRenderingAreaGranularityKHR;

    vkCmdBindDescriptorSets2KHR:                              PFN_vkCmdBindDescriptorSets2KHR;
    vkCmdPushConstants2KHR:                                   PFN_vkCmdPushConstants2KHR;

    vkCmdPushDescriptorSet2KHR:                               PFN_vkCmdPushDescriptorSet2KHR;
    vkCmdPushDescriptorSetWithTemplate2KHR:                   PFN_vkCmdPushDescriptorSetWithTemplate2KHR;

    vkCmdBindDescriptorBufferEmbeddedSamplers2EXT:            PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT;
    vkCmdSetDescriptorBufferOffsets2EXT:                      PFN_vkCmdSetDescriptorBufferOffsets2EXT;

    vkMapMemory2KHR:                                          PFN_vkMapMemory2KHR;
    vkUnmapMemory2KHR:                                        PFN_vkUnmapMemory2KHR;

    vkAcquireProfilingLockKHR:                                PFN_vkAcquireProfilingLockKHR;
    vkReleaseProfilingLockKHR:                                PFN_vkReleaseProfilingLockKHR;

    vkCreatePipelineBinariesKHR:                              PFN_vkCreatePipelineBinariesKHR;
    vkDestroyPipelineBinaryKHR:                               PFN_vkDestroyPipelineBinaryKHR;
    vkGetPipelineBinaryDataKHR:                               PFN_vkGetPipelineBinaryDataKHR;
    vkGetPipelineKeyKHR:                                      PFN_vkGetPipelineKeyKHR;
    vkReleaseCapturedPipelineDataKHR:                         PFN_vkReleaseCapturedPipelineDataKHR;

    vkGetPipelineExecutableInternalRepresentationsKHR:        PFN_vkGetPipelineExecutableInternalRepresentationsKHR;
    vkGetPipelineExecutablePropertiesKHR:                     PFN_vkGetPipelineExecutablePropertiesKHR;
    vkGetPipelineExecutableStatisticsKHR:                     PFN_vkGetPipelineExecutableStatisticsKHR;

    vkWaitForPresentKHR:                                      PFN_vkWaitForPresentKHR;

    vkWaitForPresent2KHR:                                     PFN_vkWaitForPresent2KHR;

    vkCmdPushDescriptorSetKHR:                                PFN_vkCmdPushDescriptorSetKHR;

    vkCmdTraceRaysIndirect2KHR:                               PFN_vkCmdTraceRaysIndirect2KHR;

    vkCmdSetRayTracingPipelineStackSizeKHR:                   PFN_vkCmdSetRayTracingPipelineStackSizeKHR;
    vkCmdTraceRaysIndirectKHR:                                PFN_vkCmdTraceRaysIndirectKHR;
    vkCmdTraceRaysKHR:                                        PFN_vkCmdTraceRaysKHR;
    vkCreateRayTracingPipelinesKHR:                           PFN_vkCreateRayTracingPipelinesKHR;
    vkGetRayTracingCaptureReplayShaderGroupHandlesKHR:        PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR;
    vkGetRayTracingShaderGroupHandlesKHR:                     PFN_vkGetRayTracingShaderGroupHandlesKHR;
    vkGetRayTracingShaderGroupStackSizeKHR:                   PFN_vkGetRayTracingShaderGroupStackSizeKHR;

    vkCreateSamplerYcbcrConversionKHR:                        PFN_vkCreateSamplerYcbcrConversionKHR;
    vkDestroySamplerYcbcrConversionKHR:                       PFN_vkDestroySamplerYcbcrConversionKHR;

    vkGetSwapchainStatusKHR:                                  PFN_vkGetSwapchainStatusKHR;

    vkAcquireNextImageKHR:                                    PFN_vkAcquireNextImageKHR;
    vkCreateSwapchainKHR:                                     PFN_vkCreateSwapchainKHR;
    vkDestroySwapchainKHR:                                    PFN_vkDestroySwapchainKHR;
    vkGetSwapchainImagesKHR:                                  PFN_vkGetSwapchainImagesKHR;
    vkQueuePresentKHR:                                        PFN_vkQueuePresentKHR;

    vkReleaseSwapchainImagesKHR:                              PFN_vkReleaseSwapchainImagesKHR;

    vkCmdPipelineBarrier2KHR:                                 PFN_vkCmdPipelineBarrier2KHR;
    vkCmdResetEvent2KHR:                                      PFN_vkCmdResetEvent2KHR;
    vkCmdSetEvent2KHR:                                        PFN_vkCmdSetEvent2KHR;
    vkCmdWaitEvents2KHR:                                      PFN_vkCmdWaitEvents2KHR;
    vkCmdWriteTimestamp2KHR:                                  PFN_vkCmdWriteTimestamp2KHR;
    vkQueueSubmit2KHR:                                        PFN_vkQueueSubmit2KHR;

    vkGetSemaphoreCounterValueKHR:                            PFN_vkGetSemaphoreCounterValueKHR;
    vkSignalSemaphoreKHR:                                     PFN_vkSignalSemaphoreKHR;
    vkWaitSemaphoresKHR:                                      PFN_vkWaitSemaphoresKHR;

    vkCmdDecodeVideoKHR:                                      PFN_vkCmdDecodeVideoKHR;

    vkCmdEncodeVideoKHR:                                      PFN_vkCmdEncodeVideoKHR;
    vkGetEncodedVideoSessionParametersKHR:                    PFN_vkGetEncodedVideoSessionParametersKHR;

    vkBindVideoSessionMemoryKHR:                              PFN_vkBindVideoSessionMemoryKHR;
    vkCmdBeginVideoCodingKHR:                                 PFN_vkCmdBeginVideoCodingKHR;
    vkCmdControlVideoCodingKHR:                               PFN_vkCmdControlVideoCodingKHR;
    vkCmdEndVideoCodingKHR:                                   PFN_vkCmdEndVideoCodingKHR;
    vkCreateVideoSessionKHR:                                  PFN_vkCreateVideoSessionKHR;
    vkCreateVideoSessionParametersKHR:                        PFN_vkCreateVideoSessionParametersKHR;
    vkDestroyVideoSessionKHR:                                 PFN_vkDestroyVideoSessionKHR;
    vkDestroyVideoSessionParametersKHR:                       PFN_vkDestroyVideoSessionParametersKHR;
    vkGetVideoSessionMemoryRequirementsKHR:                   PFN_vkGetVideoSessionMemoryRequirementsKHR;
    vkUpdateVideoSessionParametersKHR:                        PFN_vkUpdateVideoSessionParametersKHR;

    vkCmdCuLaunchKernelNVX:                                   PFN_vkCmdCuLaunchKernelNVX;
    vkCreateCuFunctionNVX:                                    PFN_vkCreateCuFunctionNVX;
    vkCreateCuModuleNVX:                                      PFN_vkCreateCuModuleNVX;
    vkDestroyCuFunctionNVX:                                   PFN_vkDestroyCuFunctionNVX;
    vkDestroyCuModuleNVX:                                     PFN_vkDestroyCuModuleNVX;

    vkGetImageViewHandleNVX:                                  PFN_vkGetImageViewHandleNVX;

    vkGetImageViewHandle64NVX:                                PFN_vkGetImageViewHandle64NVX;

    vkGetImageViewAddressNVX:                                 PFN_vkGetImageViewAddressNVX;

    vkGetDeviceCombinedImageSamplerIndexNVX:                  PFN_vkGetDeviceCombinedImageSamplerIndexNVX;

    vkCmdSetViewportWScalingNV:                               PFN_vkCmdSetViewportWScalingNV;

    vkCmdBuildClusterAccelerationStructureIndirectNV:         PFN_vkCmdBuildClusterAccelerationStructureIndirectNV;
    vkGetClusterAccelerationStructureBuildSizesNV:            PFN_vkGetClusterAccelerationStructureBuildSizesNV;

    vkCmdSetComputeOccupancyPriorityNV:                       PFN_vkCmdSetComputeOccupancyPriorityNV;

    vkCmdConvertCooperativeVectorMatrixNV:                    PFN_vkCmdConvertCooperativeVectorMatrixNV;
    vkConvertCooperativeVectorMatrixNV:                       PFN_vkConvertCooperativeVectorMatrixNV;

    vkCmdCopyMemoryIndirectNV:                                PFN_vkCmdCopyMemoryIndirectNV;
    vkCmdCopyMemoryToImageIndirectNV:                         PFN_vkCmdCopyMemoryToImageIndirectNV;

    padding_2eabdf3b:                                         [6] PFN_vkVoidFunction;

    vkCmdSetCheckpointNV:                                     PFN_vkCmdSetCheckpointNV;
    vkGetQueueCheckpointDataNV:                               PFN_vkGetQueueCheckpointDataNV;

    vkGetQueueCheckpointData2NV:                              PFN_vkGetQueueCheckpointData2NV;

    vkCmdBindPipelineShaderGroupNV:                           PFN_vkCmdBindPipelineShaderGroupNV;
    vkCmdExecuteGeneratedCommandsNV:                          PFN_vkCmdExecuteGeneratedCommandsNV;
    vkCmdPreprocessGeneratedCommandsNV:                       PFN_vkCmdPreprocessGeneratedCommandsNV;
    vkCreateIndirectCommandsLayoutNV:                         PFN_vkCreateIndirectCommandsLayoutNV;
    vkDestroyIndirectCommandsLayoutNV:                        PFN_vkDestroyIndirectCommandsLayoutNV;
    vkGetGeneratedCommandsMemoryRequirementsNV:               PFN_vkGetGeneratedCommandsMemoryRequirementsNV;

    vkCmdUpdatePipelineIndirectBufferNV:                      PFN_vkCmdUpdatePipelineIndirectBufferNV;
    vkGetPipelineIndirectDeviceAddressNV:                     PFN_vkGetPipelineIndirectDeviceAddressNV;
    vkGetPipelineIndirectMemoryRequirementsNV:                PFN_vkGetPipelineIndirectMemoryRequirementsNV;

    vkCreateExternalComputeQueueNV:                           PFN_vkCreateExternalComputeQueueNV;
    vkDestroyExternalComputeQueueNV:                          PFN_vkDestroyExternalComputeQueueNV;
    vkGetExternalComputeQueueDataNV:                          PFN_vkGetExternalComputeQueueDataNV;

    vkGetMemoryRemoteAddressNV:                               PFN_vkGetMemoryRemoteAddressNV;

    vkGetMemoryWin32HandleNV:                                 PFN_vkGetMemoryWin32HandleNV;

    vkCmdSetFragmentShadingRateEnumNV:                        PFN_vkCmdSetFragmentShadingRateEnumNV;

    vkGetLatencyTimingsLegacyNV:                              PFN_vkGetLatencyTimingsLegacyNV;
    vkGetSleepStatusLegacyNV:                                 PFN_vkGetSleepStatusLegacyNV;
    vkLatencySleepLegacyNV:                                   PFN_vkLatencySleepLegacyNV;
    vkQueueNotifyOutOfBandLegacyNV:                           PFN_vkQueueNotifyOutOfBandLegacyNV;
    vkSetLatencyMarkerLegacyNV:                               PFN_vkSetLatencyMarkerLegacyNV;
    vkSetLatencySleepModeLegacyNV:                            PFN_vkSetLatencySleepModeLegacyNV;
    vkShutdownLatencyDeviceLegacyNV:                          PFN_vkShutdownLatencyDeviceLegacyNV;

    vkGetLatencyTimingsNV:                                    PFN_vkGetLatencyTimingsNV;
    vkLatencySleepNV:                                         PFN_vkLatencySleepNV;
    vkQueueNotifyOutOfBandNV:                                 PFN_vkQueueNotifyOutOfBandNV;
    vkSetLatencyMarkerNV:                                     PFN_vkSetLatencyMarkerNV;
    vkSetLatencySleepModeNV:                                  PFN_vkSetLatencySleepModeNV;

    vkCmdDecompressMemoryIndirectCountNV:                     PFN_vkCmdDecompressMemoryIndirectCountNV;
    vkCmdDecompressMemoryNV:                                  PFN_vkCmdDecompressMemoryNV;

    vkCmdDrawMeshTasksIndirectNV:                             PFN_vkCmdDrawMeshTasksIndirectNV;
    vkCmdDrawMeshTasksNV:                                     PFN_vkCmdDrawMeshTasksNV;

    vkCmdDrawMeshTasksIndirectCountNV:                        PFN_vkCmdDrawMeshTasksIndirectCountNV;

    vkBindOpticalFlowSessionImageNV:                          PFN_vkBindOpticalFlowSessionImageNV;
    vkCmdOpticalFlowExecuteNV:                                PFN_vkCmdOpticalFlowExecuteNV;
    vkCreateOpticalFlowSessionNV:                             PFN_vkCreateOpticalFlowSessionNV;
    vkDestroyOpticalFlowSessionNV:                            PFN_vkDestroyOpticalFlowSessionNV;

    vkCmdBuildPartitionedAccelerationStructuresNV:            PFN_vkCmdBuildPartitionedAccelerationStructuresNV;
    vkGetPartitionedAccelerationStructuresBuildSizesNV:       PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV;

    vkBindAccelerationStructureMemoryNV:                      PFN_vkBindAccelerationStructureMemoryNV;
    vkCmdBuildAccelerationStructureNV:                        PFN_vkCmdBuildAccelerationStructureNV;
    vkCmdCopyAccelerationStructureNV:                         PFN_vkCmdCopyAccelerationStructureNV;
    vkCmdTraceRaysNV:                                         PFN_vkCmdTraceRaysNV;
    vkCmdWriteAccelerationStructuresPropertiesNV:             PFN_vkCmdWriteAccelerationStructuresPropertiesNV;
    vkCompileDeferredNV:                                      PFN_vkCompileDeferredNV;
    vkCreateAccelerationStructureNV:                          PFN_vkCreateAccelerationStructureNV;
    vkCreateRayTracingPipelinesNV:                            PFN_vkCreateRayTracingPipelinesNV;
    vkDestroyAccelerationStructureNV:                         PFN_vkDestroyAccelerationStructureNV;
    vkGetAccelerationStructureHandleNV:                       PFN_vkGetAccelerationStructureHandleNV;
    vkGetAccelerationStructureMemoryRequirementsNV:           PFN_vkGetAccelerationStructureMemoryRequirementsNV;
    vkGetRayTracingShaderGroupHandlesNV:                      PFN_vkGetRayTracingShaderGroupHandlesNV;

    vkCmdSetExclusiveScissorEnableNV:                         PFN_vkCmdSetExclusiveScissorEnableNV;

    vkCmdSetExclusiveScissorNV:                               PFN_vkCmdSetExclusiveScissorNV;

    vkCmdBindShadingRateImageNV:                              PFN_vkCmdBindShadingRateImageNV;
    vkCmdSetCoarseSampleOrderNV:                              PFN_vkCmdSetCoarseSampleOrderNV;
    vkCmdSetViewportShadingRatePaletteNV:                     PFN_vkCmdSetViewportShadingRatePaletteNV;

    padding_9c703846:                                         [2] PFN_vkVoidFunction;

    vkQueueSetPerfHintQCOM:                                   PFN_vkQueueSetPerfHintQCOM;

    vkCmdBindTileMemoryQCOM:                                  PFN_vkCmdBindTileMemoryQCOM;

    vkGetDynamicRenderingTilePropertiesQCOM:                  PFN_vkGetDynamicRenderingTilePropertiesQCOM;
    vkGetFramebufferTilePropertiesQCOM:                       PFN_vkGetFramebufferTilePropertiesQCOM;

    vkCmdBeginPerTileExecutionQCOM:                           PFN_vkCmdBeginPerTileExecutionQCOM;
    vkCmdDispatchTileQCOM:                                    PFN_vkCmdDispatchTileQCOM;
    vkCmdEndPerTileExecutionQCOM:                             PFN_vkCmdEndPerTileExecutionQCOM;

    padding_1c27735d:                                         [1] PFN_vkVoidFunction;

    vkGetDescriptorSetHostMappingVALVE:                       PFN_vkGetDescriptorSetHostMappingVALVE;
    vkGetDescriptorSetLayoutHostMappingInfoVALVE:             PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE;

    vkCmdSetDepthClampRangeEXT:                               PFN_vkCmdSetDepthClampRangeEXT;

    vkCmdBindVertexBuffers2EXT:                               PFN_vkCmdBindVertexBuffers2EXT;
    vkCmdSetCullModeEXT:                                      PFN_vkCmdSetCullModeEXT;
    vkCmdSetDepthBoundsTestEnableEXT:                         PFN_vkCmdSetDepthBoundsTestEnableEXT;
    vkCmdSetDepthCompareOpEXT:                                PFN_vkCmdSetDepthCompareOpEXT;
    vkCmdSetDepthTestEnableEXT:                               PFN_vkCmdSetDepthTestEnableEXT;
    vkCmdSetDepthWriteEnableEXT:                              PFN_vkCmdSetDepthWriteEnableEXT;
    vkCmdSetFrontFaceEXT:                                     PFN_vkCmdSetFrontFaceEXT;
    vkCmdSetPrimitiveTopologyEXT:                             PFN_vkCmdSetPrimitiveTopologyEXT;
    vkCmdSetScissorWithCountEXT:                              PFN_vkCmdSetScissorWithCountEXT;
    vkCmdSetStencilOpEXT:                                     PFN_vkCmdSetStencilOpEXT;
    vkCmdSetStencilTestEnableEXT:                             PFN_vkCmdSetStencilTestEnableEXT;
    vkCmdSetViewportWithCountEXT:                             PFN_vkCmdSetViewportWithCountEXT;

    vkCmdSetDepthBiasEnableEXT:                               PFN_vkCmdSetDepthBiasEnableEXT;
    vkCmdSetLogicOpEXT:                                       PFN_vkCmdSetLogicOpEXT;
    vkCmdSetPatchControlPointsEXT:                            PFN_vkCmdSetPatchControlPointsEXT;
    vkCmdSetPrimitiveRestartEnableEXT:                        PFN_vkCmdSetPrimitiveRestartEnableEXT;
    vkCmdSetRasterizerDiscardEnableEXT:                       PFN_vkCmdSetRasterizerDiscardEnableEXT;

    vkCmdSetAlphaToCoverageEnableEXT:                         PFN_vkCmdSetAlphaToCoverageEnableEXT;
    vkCmdSetAlphaToOneEnableEXT:                              PFN_vkCmdSetAlphaToOneEnableEXT;
    vkCmdSetColorBlendEnableEXT:                              PFN_vkCmdSetColorBlendEnableEXT;
    vkCmdSetColorBlendEquationEXT:                            PFN_vkCmdSetColorBlendEquationEXT;
    vkCmdSetColorWriteMaskEXT:                                PFN_vkCmdSetColorWriteMaskEXT;
    vkCmdSetDepthClampEnableEXT:                              PFN_vkCmdSetDepthClampEnableEXT;
    vkCmdSetLogicOpEnableEXT:                                 PFN_vkCmdSetLogicOpEnableEXT;
    vkCmdSetPolygonModeEXT:                                   PFN_vkCmdSetPolygonModeEXT;
    vkCmdSetRasterizationSamplesEXT:                          PFN_vkCmdSetRasterizationSamplesEXT;
    vkCmdSetSampleMaskEXT:                                    PFN_vkCmdSetSampleMaskEXT;

    vkCmdSetTessellationDomainOriginEXT:                      PFN_vkCmdSetTessellationDomainOriginEXT;

    vkCmdSetRasterizationStreamEXT:                           PFN_vkCmdSetRasterizationStreamEXT;

    vkCmdSetConservativeRasterizationModeEXT:                 PFN_vkCmdSetConservativeRasterizationModeEXT;
    vkCmdSetExtraPrimitiveOverestimationSizeEXT:              PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT;

    vkCmdSetDepthClipEnableEXT:                               PFN_vkCmdSetDepthClipEnableEXT;

    vkCmdSetSampleLocationsEnableEXT:                         PFN_vkCmdSetSampleLocationsEnableEXT;

    vkCmdSetColorBlendAdvancedEXT:                            PFN_vkCmdSetColorBlendAdvancedEXT;

    vkCmdSetProvokingVertexModeEXT:                           PFN_vkCmdSetProvokingVertexModeEXT;

    vkCmdSetLineRasterizationModeEXT:                         PFN_vkCmdSetLineRasterizationModeEXT;
    vkCmdSetLineStippleEnableEXT:                             PFN_vkCmdSetLineStippleEnableEXT;

    vkCmdSetDepthClipNegativeOneToOneEXT:                     PFN_vkCmdSetDepthClipNegativeOneToOneEXT;

    vkCmdSetViewportWScalingEnableNV:                         PFN_vkCmdSetViewportWScalingEnableNV;

    vkCmdSetViewportSwizzleNV:                                PFN_vkCmdSetViewportSwizzleNV;

    vkCmdSetCoverageToColorEnableNV:                          PFN_vkCmdSetCoverageToColorEnableNV;
    vkCmdSetCoverageToColorLocationNV:                        PFN_vkCmdSetCoverageToColorLocationNV;

    vkCmdSetCoverageModulationModeNV:                         PFN_vkCmdSetCoverageModulationModeNV;
    vkCmdSetCoverageModulationTableEnableNV:                  PFN_vkCmdSetCoverageModulationTableEnableNV;
    vkCmdSetCoverageModulationTableNV:                        PFN_vkCmdSetCoverageModulationTableNV;

    vkCmdSetShadingRateImageEnableNV:                         PFN_vkCmdSetShadingRateImageEnableNV;

    vkCmdSetRepresentativeFragmentTestEnableNV:               PFN_vkCmdSetRepresentativeFragmentTestEnableNV;

    vkCmdSetCoverageReductionModeNV:                          PFN_vkCmdSetCoverageReductionModeNV;

    vkGetImageSubresourceLayout2EXT:                          PFN_vkGetImageSubresourceLayout2EXT;

    vkCmdSetVertexInputEXT:                                   PFN_vkCmdSetVertexInputEXT;

    vkCmdPushDescriptorSetWithTemplateKHR:                    PFN_vkCmdPushDescriptorSetWithTemplateKHR;

    vkGetDeviceGroupPresentCapabilitiesKHR:                   PFN_vkGetDeviceGroupPresentCapabilitiesKHR;
    vkGetDeviceGroupSurfacePresentModesKHR:                   PFN_vkGetDeviceGroupSurfacePresentModesKHR;

    vkAcquireNextImage2KHR:                                   PFN_vkAcquireNextImage2KHR;
}

vkCreateDevice: PFN_vkCreateDevice #elsewhere volk;
vkCreateInstance: PFN_vkCreateInstance #elsewhere volk;
vkDestroyInstance: PFN_vkDestroyInstance #elsewhere volk;
vkEnumerateDeviceExtensionProperties: PFN_vkEnumerateDeviceExtensionProperties #elsewhere volk;
vkEnumerateDeviceLayerProperties: PFN_vkEnumerateDeviceLayerProperties #elsewhere volk;
vkEnumerateInstanceExtensionProperties: PFN_vkEnumerateInstanceExtensionProperties #elsewhere volk;
vkEnumerateInstanceLayerProperties: PFN_vkEnumerateInstanceLayerProperties #elsewhere volk;
vkEnumeratePhysicalDevices: PFN_vkEnumeratePhysicalDevices #elsewhere volk;
vkGetDeviceProcAddr: PFN_vkGetDeviceProcAddr #elsewhere volk;
vkGetInstanceProcAddr: PFN_vkGetInstanceProcAddr #elsewhere volk;
vkGetPhysicalDeviceFeatures: PFN_vkGetPhysicalDeviceFeatures #elsewhere volk;
vkGetPhysicalDeviceFormatProperties: PFN_vkGetPhysicalDeviceFormatProperties #elsewhere volk;
vkGetPhysicalDeviceImageFormatProperties: PFN_vkGetPhysicalDeviceImageFormatProperties #elsewhere volk;
vkGetPhysicalDeviceMemoryProperties: PFN_vkGetPhysicalDeviceMemoryProperties #elsewhere volk;
vkGetPhysicalDeviceProperties: PFN_vkGetPhysicalDeviceProperties #elsewhere volk;
vkGetPhysicalDeviceQueueFamilyProperties: PFN_vkGetPhysicalDeviceQueueFamilyProperties #elsewhere volk;
vkGetPhysicalDeviceSparseImageFormatProperties: PFN_vkGetPhysicalDeviceSparseImageFormatProperties #elsewhere volk;

vkEnumerateInstanceVersion: PFN_vkEnumerateInstanceVersion #elsewhere volk;
vkEnumeratePhysicalDeviceGroups: PFN_vkEnumeratePhysicalDeviceGroups #elsewhere volk;
vkGetPhysicalDeviceExternalBufferProperties: PFN_vkGetPhysicalDeviceExternalBufferProperties #elsewhere volk;
vkGetPhysicalDeviceExternalFenceProperties: PFN_vkGetPhysicalDeviceExternalFenceProperties #elsewhere volk;
vkGetPhysicalDeviceExternalSemaphoreProperties: PFN_vkGetPhysicalDeviceExternalSemaphoreProperties #elsewhere volk;
vkGetPhysicalDeviceFeatures2: PFN_vkGetPhysicalDeviceFeatures2 #elsewhere volk;
vkGetPhysicalDeviceFormatProperties2: PFN_vkGetPhysicalDeviceFormatProperties2 #elsewhere volk;
vkGetPhysicalDeviceImageFormatProperties2: PFN_vkGetPhysicalDeviceImageFormatProperties2 #elsewhere volk;
vkGetPhysicalDeviceMemoryProperties2: PFN_vkGetPhysicalDeviceMemoryProperties2 #elsewhere volk;
vkGetPhysicalDeviceProperties2: PFN_vkGetPhysicalDeviceProperties2 #elsewhere volk;
vkGetPhysicalDeviceQueueFamilyProperties2: PFN_vkGetPhysicalDeviceQueueFamilyProperties2 #elsewhere volk;
vkGetPhysicalDeviceSparseImageFormatProperties2: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2 #elsewhere volk;

vkGetPhysicalDeviceToolProperties: PFN_vkGetPhysicalDeviceToolProperties #elsewhere volk;

vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM: PFN_vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM #elsewhere volk;
vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM: PFN_vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM #elsewhere volk;

vkGetPhysicalDeviceQueueFamilyDataGraphOpticalFlowImageFormatsARM: PFN_vkGetPhysicalDeviceQueueFamilyDataGraphOpticalFlowImageFormatsARM #elsewhere volk;

vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM: PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM #elsewhere volk;

vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM: PFN_vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM #elsewhere volk;

vkGetPhysicalDeviceExternalTensorPropertiesARM: PFN_vkGetPhysicalDeviceExternalTensorPropertiesARM #elsewhere volk;

vkAcquireDrmDisplayEXT: PFN_vkAcquireDrmDisplayEXT #elsewhere volk;
vkGetDrmDisplayEXT: PFN_vkGetDrmDisplayEXT #elsewhere volk;

vkGetPhysicalDeviceCalibrateableTimeDomainsEXT: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsEXT #elsewhere volk;

vkGetPhysicalDeviceCooperativeMatrixProperties2EXT: PFN_vkGetPhysicalDeviceCooperativeMatrixProperties2EXT #elsewhere volk;

vkCreateDebugReportCallbackEXT: PFN_vkCreateDebugReportCallbackEXT #elsewhere volk;
vkDebugReportMessageEXT: PFN_vkDebugReportMessageEXT #elsewhere volk;
vkDestroyDebugReportCallbackEXT: PFN_vkDestroyDebugReportCallbackEXT #elsewhere volk;

vkCmdBeginDebugUtilsLabelEXT: PFN_vkCmdBeginDebugUtilsLabelEXT #elsewhere volk;
vkCmdEndDebugUtilsLabelEXT: PFN_vkCmdEndDebugUtilsLabelEXT #elsewhere volk;
vkCmdInsertDebugUtilsLabelEXT: PFN_vkCmdInsertDebugUtilsLabelEXT #elsewhere volk;
vkCreateDebugUtilsMessengerEXT: PFN_vkCreateDebugUtilsMessengerEXT #elsewhere volk;
vkDestroyDebugUtilsMessengerEXT: PFN_vkDestroyDebugUtilsMessengerEXT #elsewhere volk;
vkQueueBeginDebugUtilsLabelEXT: PFN_vkQueueBeginDebugUtilsLabelEXT #elsewhere volk;
vkQueueEndDebugUtilsLabelEXT: PFN_vkQueueEndDebugUtilsLabelEXT #elsewhere volk;
vkQueueInsertDebugUtilsLabelEXT: PFN_vkQueueInsertDebugUtilsLabelEXT #elsewhere volk;
vkSetDebugUtilsObjectNameEXT: PFN_vkSetDebugUtilsObjectNameEXT #elsewhere volk;
vkSetDebugUtilsObjectTagEXT: PFN_vkSetDebugUtilsObjectTagEXT #elsewhere volk;
vkSubmitDebugUtilsMessageEXT: PFN_vkSubmitDebugUtilsMessageEXT #elsewhere volk;

vkGetPhysicalDeviceDescriptorSizeEXT: PFN_vkGetPhysicalDeviceDescriptorSizeEXT #elsewhere volk;

vkReleaseDisplayEXT: PFN_vkReleaseDisplayEXT #elsewhere volk;

vkGetPhysicalDeviceSurfaceCapabilities2EXT: PFN_vkGetPhysicalDeviceSurfaceCapabilities2EXT #elsewhere volk;

vkGetPhysicalDeviceSurfacePresentModes2EXT: PFN_vkGetPhysicalDeviceSurfacePresentModes2EXT #elsewhere volk;

vkCreateHeadlessSurfaceEXT: PFN_vkCreateHeadlessSurfaceEXT #elsewhere volk;

vkGetPhysicalDeviceMultisamplePropertiesEXT: PFN_vkGetPhysicalDeviceMultisamplePropertiesEXT #elsewhere volk;

vkGetPhysicalDeviceToolPropertiesEXT: PFN_vkGetPhysicalDeviceToolPropertiesEXT #elsewhere volk;

vkGetPhysicalDeviceCalibrateableTimeDomainsKHR: PFN_vkGetPhysicalDeviceCalibrateableTimeDomainsKHR #elsewhere volk;

vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR #elsewhere volk;

vkEnumeratePhysicalDeviceGroupsKHR: PFN_vkEnumeratePhysicalDeviceGroupsKHR #elsewhere volk;

vkCreateDisplayModeKHR: PFN_vkCreateDisplayModeKHR #elsewhere volk;
vkCreateDisplayPlaneSurfaceKHR: PFN_vkCreateDisplayPlaneSurfaceKHR #elsewhere volk;
vkGetDisplayModePropertiesKHR: PFN_vkGetDisplayModePropertiesKHR #elsewhere volk;
vkGetDisplayPlaneCapabilitiesKHR: PFN_vkGetDisplayPlaneCapabilitiesKHR #elsewhere volk;
vkGetDisplayPlaneSupportedDisplaysKHR: PFN_vkGetDisplayPlaneSupportedDisplaysKHR #elsewhere volk;
vkGetPhysicalDeviceDisplayPlanePropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPlanePropertiesKHR #elsewhere volk;
vkGetPhysicalDeviceDisplayPropertiesKHR: PFN_vkGetPhysicalDeviceDisplayPropertiesKHR #elsewhere volk;

vkGetPhysicalDeviceExternalFencePropertiesKHR: PFN_vkGetPhysicalDeviceExternalFencePropertiesKHR #elsewhere volk;

vkGetPhysicalDeviceExternalBufferPropertiesKHR: PFN_vkGetPhysicalDeviceExternalBufferPropertiesKHR #elsewhere volk;

vkGetPhysicalDeviceExternalSemaphorePropertiesKHR: PFN_vkGetPhysicalDeviceExternalSemaphorePropertiesKHR #elsewhere volk;

vkGetPhysicalDeviceFragmentShadingRatesKHR: PFN_vkGetPhysicalDeviceFragmentShadingRatesKHR #elsewhere volk;

vkGetDisplayModeProperties2KHR: PFN_vkGetDisplayModeProperties2KHR #elsewhere volk;
vkGetDisplayPlaneCapabilities2KHR: PFN_vkGetDisplayPlaneCapabilities2KHR #elsewhere volk;
vkGetPhysicalDeviceDisplayPlaneProperties2KHR: PFN_vkGetPhysicalDeviceDisplayPlaneProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceDisplayProperties2KHR: PFN_vkGetPhysicalDeviceDisplayProperties2KHR #elsewhere volk;

vkGetPhysicalDeviceFeatures2KHR: PFN_vkGetPhysicalDeviceFeatures2KHR #elsewhere volk;
vkGetPhysicalDeviceFormatProperties2KHR: PFN_vkGetPhysicalDeviceFormatProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceImageFormatProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceMemoryProperties2KHR: PFN_vkGetPhysicalDeviceMemoryProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceProperties2KHR: PFN_vkGetPhysicalDeviceProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceQueueFamilyProperties2KHR: PFN_vkGetPhysicalDeviceQueueFamilyProperties2KHR #elsewhere volk;
vkGetPhysicalDeviceSparseImageFormatProperties2KHR: PFN_vkGetPhysicalDeviceSparseImageFormatProperties2KHR #elsewhere volk;

vkGetPhysicalDeviceSurfaceCapabilities2KHR: PFN_vkGetPhysicalDeviceSurfaceCapabilities2KHR #elsewhere volk;
vkGetPhysicalDeviceSurfaceFormats2KHR: PFN_vkGetPhysicalDeviceSurfaceFormats2KHR #elsewhere volk;

vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR: PFN_vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR #elsewhere volk;
vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR: PFN_vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR #elsewhere volk;

vkDestroySurfaceKHR: PFN_vkDestroySurfaceKHR #elsewhere volk;
vkGetPhysicalDeviceSurfaceCapabilitiesKHR: PFN_vkGetPhysicalDeviceSurfaceCapabilitiesKHR #elsewhere volk;
vkGetPhysicalDeviceSurfaceFormatsKHR: PFN_vkGetPhysicalDeviceSurfaceFormatsKHR #elsewhere volk;
vkGetPhysicalDeviceSurfacePresentModesKHR: PFN_vkGetPhysicalDeviceSurfacePresentModesKHR #elsewhere volk;
vkGetPhysicalDeviceSurfaceSupportKHR: PFN_vkGetPhysicalDeviceSurfaceSupportKHR #elsewhere volk;

vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR: PFN_vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR #elsewhere volk;

vkGetPhysicalDeviceVideoCapabilitiesKHR: PFN_vkGetPhysicalDeviceVideoCapabilitiesKHR #elsewhere volk;
vkGetPhysicalDeviceVideoFormatPropertiesKHR: PFN_vkGetPhysicalDeviceVideoFormatPropertiesKHR #elsewhere volk;

vkCreateWin32SurfaceKHR: PFN_vkCreateWin32SurfaceKHR #elsewhere volk;
vkGetPhysicalDeviceWin32PresentationSupportKHR: PFN_vkGetPhysicalDeviceWin32PresentationSupportKHR #elsewhere volk;

vkAcquireWinrtDisplayNV: PFN_vkAcquireWinrtDisplayNV #elsewhere volk;
vkGetWinrtDisplayNV: PFN_vkGetWinrtDisplayNV #elsewhere volk;

vkGetPhysicalDeviceCooperativeMatrixPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeMatrixPropertiesNV #elsewhere volk;

vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV #elsewhere volk;

vkGetPhysicalDeviceCooperativeVectorPropertiesNV: PFN_vkGetPhysicalDeviceCooperativeVectorPropertiesNV #elsewhere volk;

vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV: PFN_vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV #elsewhere volk;

vkGetPhysicalDeviceExternalImageFormatPropertiesNV: PFN_vkGetPhysicalDeviceExternalImageFormatPropertiesNV #elsewhere volk;

vkGetPhysicalDeviceOpticalFlowImageFormatsNV: PFN_vkGetPhysicalDeviceOpticalFlowImageFormatsNV #elsewhere volk;

vkGetPhysicalDeviceQueueFamilyDataGraphEngineOperationPropertiesARM: PFN_vkGetPhysicalDeviceQueueFamilyDataGraphEngineOperationPropertiesARM #elsewhere volk;

vkGetPhysicalDevicePresentRectanglesKHR: PFN_vkGetPhysicalDevicePresentRectanglesKHR #elsewhere volk;

vkAllocateCommandBuffers: PFN_vkAllocateCommandBuffers #elsewhere volk;
vkAllocateDescriptorSets: PFN_vkAllocateDescriptorSets #elsewhere volk;
vkAllocateMemory: PFN_vkAllocateMemory #elsewhere volk;
vkBeginCommandBuffer: PFN_vkBeginCommandBuffer #elsewhere volk;
vkBindBufferMemory: PFN_vkBindBufferMemory #elsewhere volk;
vkBindImageMemory: PFN_vkBindImageMemory #elsewhere volk;
vkCmdBeginQuery: PFN_vkCmdBeginQuery #elsewhere volk;
vkCmdBeginRenderPass: PFN_vkCmdBeginRenderPass #elsewhere volk;
vkCmdBindDescriptorSets: PFN_vkCmdBindDescriptorSets #elsewhere volk;
vkCmdBindIndexBuffer: PFN_vkCmdBindIndexBuffer #elsewhere volk;
vkCmdBindPipeline: PFN_vkCmdBindPipeline #elsewhere volk;
vkCmdBindVertexBuffers: PFN_vkCmdBindVertexBuffers #elsewhere volk;
vkCmdBlitImage: PFN_vkCmdBlitImage #elsewhere volk;
vkCmdClearAttachments: PFN_vkCmdClearAttachments #elsewhere volk;
vkCmdClearColorImage: PFN_vkCmdClearColorImage #elsewhere volk;
vkCmdClearDepthStencilImage: PFN_vkCmdClearDepthStencilImage #elsewhere volk;
vkCmdCopyBuffer: PFN_vkCmdCopyBuffer #elsewhere volk;
vkCmdCopyBufferToImage: PFN_vkCmdCopyBufferToImage #elsewhere volk;
vkCmdCopyImage: PFN_vkCmdCopyImage #elsewhere volk;
vkCmdCopyImageToBuffer: PFN_vkCmdCopyImageToBuffer #elsewhere volk;
vkCmdCopyQueryPoolResults: PFN_vkCmdCopyQueryPoolResults #elsewhere volk;
vkCmdDispatch: PFN_vkCmdDispatch #elsewhere volk;
vkCmdDispatchIndirect: PFN_vkCmdDispatchIndirect #elsewhere volk;
vkCmdDraw: PFN_vkCmdDraw #elsewhere volk;
vkCmdDrawIndexed: PFN_vkCmdDrawIndexed #elsewhere volk;
vkCmdDrawIndexedIndirect: PFN_vkCmdDrawIndexedIndirect #elsewhere volk;
vkCmdDrawIndirect: PFN_vkCmdDrawIndirect #elsewhere volk;
vkCmdEndQuery: PFN_vkCmdEndQuery #elsewhere volk;
vkCmdEndRenderPass: PFN_vkCmdEndRenderPass #elsewhere volk;
vkCmdExecuteCommands: PFN_vkCmdExecuteCommands #elsewhere volk;
vkCmdFillBuffer: PFN_vkCmdFillBuffer #elsewhere volk;
vkCmdNextSubpass: PFN_vkCmdNextSubpass #elsewhere volk;
vkCmdPipelineBarrier: PFN_vkCmdPipelineBarrier #elsewhere volk;
vkCmdPushConstants: PFN_vkCmdPushConstants #elsewhere volk;
vkCmdResetEvent: PFN_vkCmdResetEvent #elsewhere volk;
vkCmdResetQueryPool: PFN_vkCmdResetQueryPool #elsewhere volk;
vkCmdResolveImage: PFN_vkCmdResolveImage #elsewhere volk;
vkCmdSetBlendConstants: PFN_vkCmdSetBlendConstants #elsewhere volk;
vkCmdSetDepthBias: PFN_vkCmdSetDepthBias #elsewhere volk;
vkCmdSetDepthBounds: PFN_vkCmdSetDepthBounds #elsewhere volk;
vkCmdSetEvent: PFN_vkCmdSetEvent #elsewhere volk;
vkCmdSetLineWidth: PFN_vkCmdSetLineWidth #elsewhere volk;
vkCmdSetScissor: PFN_vkCmdSetScissor #elsewhere volk;
vkCmdSetStencilCompareMask: PFN_vkCmdSetStencilCompareMask #elsewhere volk;
vkCmdSetStencilReference: PFN_vkCmdSetStencilReference #elsewhere volk;
vkCmdSetStencilWriteMask: PFN_vkCmdSetStencilWriteMask #elsewhere volk;
vkCmdSetViewport: PFN_vkCmdSetViewport #elsewhere volk;
vkCmdUpdateBuffer: PFN_vkCmdUpdateBuffer #elsewhere volk;
vkCmdWaitEvents: PFN_vkCmdWaitEvents #elsewhere volk;
vkCmdWriteTimestamp: PFN_vkCmdWriteTimestamp #elsewhere volk;
vkCreateBuffer: PFN_vkCreateBuffer #elsewhere volk;
vkCreateBufferView: PFN_vkCreateBufferView #elsewhere volk;
vkCreateCommandPool: PFN_vkCreateCommandPool #elsewhere volk;
vkCreateComputePipelines: PFN_vkCreateComputePipelines #elsewhere volk;
vkCreateDescriptorPool: PFN_vkCreateDescriptorPool #elsewhere volk;
vkCreateDescriptorSetLayout: PFN_vkCreateDescriptorSetLayout #elsewhere volk;
vkCreateEvent: PFN_vkCreateEvent #elsewhere volk;
vkCreateFence: PFN_vkCreateFence #elsewhere volk;
vkCreateFramebuffer: PFN_vkCreateFramebuffer #elsewhere volk;
vkCreateGraphicsPipelines: PFN_vkCreateGraphicsPipelines #elsewhere volk;
vkCreateImage: PFN_vkCreateImage #elsewhere volk;
vkCreateImageView: PFN_vkCreateImageView #elsewhere volk;
vkCreatePipelineCache: PFN_vkCreatePipelineCache #elsewhere volk;
vkCreatePipelineLayout: PFN_vkCreatePipelineLayout #elsewhere volk;
vkCreateQueryPool: PFN_vkCreateQueryPool #elsewhere volk;
vkCreateRenderPass: PFN_vkCreateRenderPass #elsewhere volk;
vkCreateSampler: PFN_vkCreateSampler #elsewhere volk;
vkCreateSemaphore: PFN_vkCreateSemaphore #elsewhere volk;
vkCreateShaderModule: PFN_vkCreateShaderModule #elsewhere volk;
vkDestroyBuffer: PFN_vkDestroyBuffer #elsewhere volk;
vkDestroyBufferView: PFN_vkDestroyBufferView #elsewhere volk;
vkDestroyCommandPool: PFN_vkDestroyCommandPool #elsewhere volk;
vkDestroyDescriptorPool: PFN_vkDestroyDescriptorPool #elsewhere volk;
vkDestroyDescriptorSetLayout: PFN_vkDestroyDescriptorSetLayout #elsewhere volk;
vkDestroyDevice: PFN_vkDestroyDevice #elsewhere volk;
vkDestroyEvent: PFN_vkDestroyEvent #elsewhere volk;
vkDestroyFence: PFN_vkDestroyFence #elsewhere volk;
vkDestroyFramebuffer: PFN_vkDestroyFramebuffer #elsewhere volk;
vkDestroyImage: PFN_vkDestroyImage #elsewhere volk;
vkDestroyImageView: PFN_vkDestroyImageView #elsewhere volk;
vkDestroyPipeline: PFN_vkDestroyPipeline #elsewhere volk;
vkDestroyPipelineCache: PFN_vkDestroyPipelineCache #elsewhere volk;
vkDestroyPipelineLayout: PFN_vkDestroyPipelineLayout #elsewhere volk;
vkDestroyQueryPool: PFN_vkDestroyQueryPool #elsewhere volk;
vkDestroyRenderPass: PFN_vkDestroyRenderPass #elsewhere volk;
vkDestroySampler: PFN_vkDestroySampler #elsewhere volk;
vkDestroySemaphore: PFN_vkDestroySemaphore #elsewhere volk;
vkDestroyShaderModule: PFN_vkDestroyShaderModule #elsewhere volk;
vkDeviceWaitIdle: PFN_vkDeviceWaitIdle #elsewhere volk;
vkEndCommandBuffer: PFN_vkEndCommandBuffer #elsewhere volk;
vkFlushMappedMemoryRanges: PFN_vkFlushMappedMemoryRanges #elsewhere volk;
vkFreeCommandBuffers: PFN_vkFreeCommandBuffers #elsewhere volk;
vkFreeDescriptorSets: PFN_vkFreeDescriptorSets #elsewhere volk;
vkFreeMemory: PFN_vkFreeMemory #elsewhere volk;
vkGetBufferMemoryRequirements: PFN_vkGetBufferMemoryRequirements #elsewhere volk;
vkGetDeviceMemoryCommitment: PFN_vkGetDeviceMemoryCommitment #elsewhere volk;
vkGetDeviceQueue: PFN_vkGetDeviceQueue #elsewhere volk;
vkGetEventStatus: PFN_vkGetEventStatus #elsewhere volk;
vkGetFenceStatus: PFN_vkGetFenceStatus #elsewhere volk;
vkGetImageMemoryRequirements: PFN_vkGetImageMemoryRequirements #elsewhere volk;
vkGetImageSparseMemoryRequirements: PFN_vkGetImageSparseMemoryRequirements #elsewhere volk;
vkGetImageSubresourceLayout: PFN_vkGetImageSubresourceLayout #elsewhere volk;
vkGetPipelineCacheData: PFN_vkGetPipelineCacheData #elsewhere volk;
vkGetQueryPoolResults: PFN_vkGetQueryPoolResults #elsewhere volk;
vkGetRenderAreaGranularity: PFN_vkGetRenderAreaGranularity #elsewhere volk;
vkInvalidateMappedMemoryRanges: PFN_vkInvalidateMappedMemoryRanges #elsewhere volk;
vkMapMemory: PFN_vkMapMemory #elsewhere volk;
vkMergePipelineCaches: PFN_vkMergePipelineCaches #elsewhere volk;
vkQueueBindSparse: PFN_vkQueueBindSparse #elsewhere volk;
vkQueueSubmit: PFN_vkQueueSubmit #elsewhere volk;
vkQueueWaitIdle: PFN_vkQueueWaitIdle #elsewhere volk;
vkResetCommandBuffer: PFN_vkResetCommandBuffer #elsewhere volk;
vkResetCommandPool: PFN_vkResetCommandPool #elsewhere volk;
vkResetDescriptorPool: PFN_vkResetDescriptorPool #elsewhere volk;
vkResetEvent: PFN_vkResetEvent #elsewhere volk;
vkResetFences: PFN_vkResetFences #elsewhere volk;
vkSetEvent: PFN_vkSetEvent #elsewhere volk;
vkUnmapMemory: PFN_vkUnmapMemory #elsewhere volk;
vkUpdateDescriptorSets: PFN_vkUpdateDescriptorSets #elsewhere volk;
vkWaitForFences: PFN_vkWaitForFences #elsewhere volk;

vkBindBufferMemory2: PFN_vkBindBufferMemory2 #elsewhere volk;
vkBindImageMemory2: PFN_vkBindImageMemory2 #elsewhere volk;
vkCmdDispatchBase: PFN_vkCmdDispatchBase #elsewhere volk;
vkCmdSetDeviceMask: PFN_vkCmdSetDeviceMask #elsewhere volk;
vkCreateDescriptorUpdateTemplate: PFN_vkCreateDescriptorUpdateTemplate #elsewhere volk;
vkCreateSamplerYcbcrConversion: PFN_vkCreateSamplerYcbcrConversion #elsewhere volk;
vkDestroyDescriptorUpdateTemplate: PFN_vkDestroyDescriptorUpdateTemplate #elsewhere volk;
vkDestroySamplerYcbcrConversion: PFN_vkDestroySamplerYcbcrConversion #elsewhere volk;
vkGetBufferMemoryRequirements2: PFN_vkGetBufferMemoryRequirements2 #elsewhere volk;
vkGetDescriptorSetLayoutSupport: PFN_vkGetDescriptorSetLayoutSupport #elsewhere volk;
vkGetDeviceGroupPeerMemoryFeatures: PFN_vkGetDeviceGroupPeerMemoryFeatures #elsewhere volk;
vkGetDeviceQueue2: PFN_vkGetDeviceQueue2 #elsewhere volk;
vkGetImageMemoryRequirements2: PFN_vkGetImageMemoryRequirements2 #elsewhere volk;
vkGetImageSparseMemoryRequirements2: PFN_vkGetImageSparseMemoryRequirements2 #elsewhere volk;
vkTrimCommandPool: PFN_vkTrimCommandPool #elsewhere volk;
vkUpdateDescriptorSetWithTemplate: PFN_vkUpdateDescriptorSetWithTemplate #elsewhere volk;

vkCmdBeginRenderPass2: PFN_vkCmdBeginRenderPass2 #elsewhere volk;
vkCmdDrawIndexedIndirectCount: PFN_vkCmdDrawIndexedIndirectCount #elsewhere volk;
vkCmdDrawIndirectCount: PFN_vkCmdDrawIndirectCount #elsewhere volk;
vkCmdEndRenderPass2: PFN_vkCmdEndRenderPass2 #elsewhere volk;
vkCmdNextSubpass2: PFN_vkCmdNextSubpass2 #elsewhere volk;
vkCreateRenderPass2: PFN_vkCreateRenderPass2 #elsewhere volk;
vkGetBufferDeviceAddress: PFN_vkGetBufferDeviceAddress #elsewhere volk;
vkGetBufferOpaqueCaptureAddress: PFN_vkGetBufferOpaqueCaptureAddress #elsewhere volk;
vkGetDeviceMemoryOpaqueCaptureAddress: PFN_vkGetDeviceMemoryOpaqueCaptureAddress #elsewhere volk;
vkGetSemaphoreCounterValue: PFN_vkGetSemaphoreCounterValue #elsewhere volk;
vkResetQueryPool: PFN_vkResetQueryPool #elsewhere volk;
vkSignalSemaphore: PFN_vkSignalSemaphore #elsewhere volk;
vkWaitSemaphores: PFN_vkWaitSemaphores #elsewhere volk;

vkCmdBeginRendering: PFN_vkCmdBeginRendering #elsewhere volk;
vkCmdBindVertexBuffers2: PFN_vkCmdBindVertexBuffers2 #elsewhere volk;
vkCmdBlitImage2: PFN_vkCmdBlitImage2 #elsewhere volk;
vkCmdCopyBuffer2: PFN_vkCmdCopyBuffer2 #elsewhere volk;
vkCmdCopyBufferToImage2: PFN_vkCmdCopyBufferToImage2 #elsewhere volk;
vkCmdCopyImage2: PFN_vkCmdCopyImage2 #elsewhere volk;
vkCmdCopyImageToBuffer2: PFN_vkCmdCopyImageToBuffer2 #elsewhere volk;
vkCmdEndRendering: PFN_vkCmdEndRendering #elsewhere volk;
vkCmdPipelineBarrier2: PFN_vkCmdPipelineBarrier2 #elsewhere volk;
vkCmdResetEvent2: PFN_vkCmdResetEvent2 #elsewhere volk;
vkCmdResolveImage2: PFN_vkCmdResolveImage2 #elsewhere volk;
vkCmdSetCullMode: PFN_vkCmdSetCullMode #elsewhere volk;
vkCmdSetDepthBiasEnable: PFN_vkCmdSetDepthBiasEnable #elsewhere volk;
vkCmdSetDepthBoundsTestEnable: PFN_vkCmdSetDepthBoundsTestEnable #elsewhere volk;
vkCmdSetDepthCompareOp: PFN_vkCmdSetDepthCompareOp #elsewhere volk;
vkCmdSetDepthTestEnable: PFN_vkCmdSetDepthTestEnable #elsewhere volk;
vkCmdSetDepthWriteEnable: PFN_vkCmdSetDepthWriteEnable #elsewhere volk;
vkCmdSetEvent2: PFN_vkCmdSetEvent2 #elsewhere volk;
vkCmdSetFrontFace: PFN_vkCmdSetFrontFace #elsewhere volk;
vkCmdSetPrimitiveRestartEnable: PFN_vkCmdSetPrimitiveRestartEnable #elsewhere volk;
vkCmdSetPrimitiveTopology: PFN_vkCmdSetPrimitiveTopology #elsewhere volk;
vkCmdSetRasterizerDiscardEnable: PFN_vkCmdSetRasterizerDiscardEnable #elsewhere volk;
vkCmdSetScissorWithCount: PFN_vkCmdSetScissorWithCount #elsewhere volk;
vkCmdSetStencilOp: PFN_vkCmdSetStencilOp #elsewhere volk;
vkCmdSetStencilTestEnable: PFN_vkCmdSetStencilTestEnable #elsewhere volk;
vkCmdSetViewportWithCount: PFN_vkCmdSetViewportWithCount #elsewhere volk;
vkCmdWaitEvents2: PFN_vkCmdWaitEvents2 #elsewhere volk;
vkCmdWriteTimestamp2: PFN_vkCmdWriteTimestamp2 #elsewhere volk;
vkCreatePrivateDataSlot: PFN_vkCreatePrivateDataSlot #elsewhere volk;
vkDestroyPrivateDataSlot: PFN_vkDestroyPrivateDataSlot #elsewhere volk;
vkGetDeviceBufferMemoryRequirements: PFN_vkGetDeviceBufferMemoryRequirements #elsewhere volk;
vkGetDeviceImageMemoryRequirements: PFN_vkGetDeviceImageMemoryRequirements #elsewhere volk;
vkGetDeviceImageSparseMemoryRequirements: PFN_vkGetDeviceImageSparseMemoryRequirements #elsewhere volk;
vkGetPrivateData: PFN_vkGetPrivateData #elsewhere volk;
vkQueueSubmit2: PFN_vkQueueSubmit2 #elsewhere volk;
vkSetPrivateData: PFN_vkSetPrivateData #elsewhere volk;

vkCmdBindDescriptorSets2: PFN_vkCmdBindDescriptorSets2 #elsewhere volk;
vkCmdBindIndexBuffer2: PFN_vkCmdBindIndexBuffer2 #elsewhere volk;
vkCmdPushConstants2: PFN_vkCmdPushConstants2 #elsewhere volk;
vkCmdPushDescriptorSet: PFN_vkCmdPushDescriptorSet #elsewhere volk;
vkCmdPushDescriptorSet2: PFN_vkCmdPushDescriptorSet2 #elsewhere volk;
vkCmdPushDescriptorSetWithTemplate: PFN_vkCmdPushDescriptorSetWithTemplate #elsewhere volk;
vkCmdPushDescriptorSetWithTemplate2: PFN_vkCmdPushDescriptorSetWithTemplate2 #elsewhere volk;
vkCmdSetLineStipple: PFN_vkCmdSetLineStipple #elsewhere volk;
vkCmdSetRenderingAttachmentLocations: PFN_vkCmdSetRenderingAttachmentLocations #elsewhere volk;
vkCmdSetRenderingInputAttachmentIndices: PFN_vkCmdSetRenderingInputAttachmentIndices #elsewhere volk;
vkCopyImageToImage: PFN_vkCopyImageToImage #elsewhere volk;
vkCopyImageToMemory: PFN_vkCopyImageToMemory #elsewhere volk;
vkCopyMemoryToImage: PFN_vkCopyMemoryToImage #elsewhere volk;
vkGetDeviceImageSubresourceLayout: PFN_vkGetDeviceImageSubresourceLayout #elsewhere volk;
vkGetImageSubresourceLayout2: PFN_vkGetImageSubresourceLayout2 #elsewhere volk;
vkGetRenderingAreaGranularity: PFN_vkGetRenderingAreaGranularity #elsewhere volk;
vkMapMemory2: PFN_vkMapMemory2 #elsewhere volk;
vkTransitionImageLayout: PFN_vkTransitionImageLayout #elsewhere volk;
vkUnmapMemory2: PFN_vkUnmapMemory2 #elsewhere volk;

vkAntiLagUpdateAMD: PFN_vkAntiLagUpdateAMD #elsewhere volk;

vkCmdWriteBufferMarkerAMD: PFN_vkCmdWriteBufferMarkerAMD #elsewhere volk;

vkCmdWriteBufferMarker2AMD: PFN_vkCmdWriteBufferMarker2AMD #elsewhere volk;

vkSetLocalDimmingAMD: PFN_vkSetLocalDimmingAMD #elsewhere volk;

vkCmdDrawIndexedIndirectCountAMD: PFN_vkCmdDrawIndexedIndirectCountAMD #elsewhere volk;
vkCmdDrawIndirectCountAMD: PFN_vkCmdDrawIndirectCountAMD #elsewhere volk;

vkCmdBeginGpaSampleAMD: PFN_vkCmdBeginGpaSampleAMD #elsewhere volk;
vkCmdBeginGpaSessionAMD: PFN_vkCmdBeginGpaSessionAMD #elsewhere volk;
vkCmdCopyGpaSessionResultsAMD: PFN_vkCmdCopyGpaSessionResultsAMD #elsewhere volk;
vkCmdEndGpaSampleAMD: PFN_vkCmdEndGpaSampleAMD #elsewhere volk;
vkCmdEndGpaSessionAMD: PFN_vkCmdEndGpaSessionAMD #elsewhere volk;
vkCreateGpaSessionAMD: PFN_vkCreateGpaSessionAMD #elsewhere volk;
vkDestroyGpaSessionAMD: PFN_vkDestroyGpaSessionAMD #elsewhere volk;
vkGetGpaDeviceClockInfoAMD: PFN_vkGetGpaDeviceClockInfoAMD #elsewhere volk;
vkGetGpaSessionResultsAMD: PFN_vkGetGpaSessionResultsAMD #elsewhere volk;
vkGetGpaSessionStatusAMD: PFN_vkGetGpaSessionStatusAMD #elsewhere volk;
vkResetGpaSessionAMD: PFN_vkResetGpaSessionAMD #elsewhere volk;
vkSetGpaDeviceClockModeAMD: PFN_vkSetGpaDeviceClockModeAMD #elsewhere volk;

vkGetShaderInfoAMD: PFN_vkGetShaderInfoAMD #elsewhere volk;

vkBindDataGraphPipelineSessionMemoryARM: PFN_vkBindDataGraphPipelineSessionMemoryARM #elsewhere volk;
vkCmdDispatchDataGraphARM: PFN_vkCmdDispatchDataGraphARM #elsewhere volk;
vkCreateDataGraphPipelineSessionARM: PFN_vkCreateDataGraphPipelineSessionARM #elsewhere volk;
vkCreateDataGraphPipelinesARM: PFN_vkCreateDataGraphPipelinesARM #elsewhere volk;
vkDestroyDataGraphPipelineSessionARM: PFN_vkDestroyDataGraphPipelineSessionARM #elsewhere volk;
vkGetDataGraphPipelineAvailablePropertiesARM: PFN_vkGetDataGraphPipelineAvailablePropertiesARM #elsewhere volk;
vkGetDataGraphPipelinePropertiesARM: PFN_vkGetDataGraphPipelinePropertiesARM #elsewhere volk;
vkGetDataGraphPipelineSessionBindPointRequirementsARM: PFN_vkGetDataGraphPipelineSessionBindPointRequirementsARM #elsewhere volk;
vkGetDataGraphPipelineSessionMemoryRequirementsARM: PFN_vkGetDataGraphPipelineSessionMemoryRequirementsARM #elsewhere volk;

vkCmdSetDispatchParametersARM: PFN_vkCmdSetDispatchParametersARM #elsewhere volk;

vkClearShaderInstrumentationMetricsARM: PFN_vkClearShaderInstrumentationMetricsARM #elsewhere volk;
vkCmdBeginShaderInstrumentationARM: PFN_vkCmdBeginShaderInstrumentationARM #elsewhere volk;
vkCmdEndShaderInstrumentationARM: PFN_vkCmdEndShaderInstrumentationARM #elsewhere volk;
vkCreateShaderInstrumentationARM: PFN_vkCreateShaderInstrumentationARM #elsewhere volk;
vkDestroyShaderInstrumentationARM: PFN_vkDestroyShaderInstrumentationARM #elsewhere volk;
vkGetShaderInstrumentationValuesARM: PFN_vkGetShaderInstrumentationValuesARM #elsewhere volk;

vkBindTensorMemoryARM: PFN_vkBindTensorMemoryARM #elsewhere volk;
vkCmdCopyTensorARM: PFN_vkCmdCopyTensorARM #elsewhere volk;
vkCreateTensorARM: PFN_vkCreateTensorARM #elsewhere volk;
vkCreateTensorViewARM: PFN_vkCreateTensorViewARM #elsewhere volk;
vkDestroyTensorARM: PFN_vkDestroyTensorARM #elsewhere volk;
vkDestroyTensorViewARM: PFN_vkDestroyTensorViewARM #elsewhere volk;
vkGetDeviceTensorMemoryRequirementsARM: PFN_vkGetDeviceTensorMemoryRequirementsARM #elsewhere volk;
vkGetTensorMemoryRequirementsARM: PFN_vkGetTensorMemoryRequirementsARM #elsewhere volk;

vkGetTensorOpaqueCaptureDescriptorDataARM: PFN_vkGetTensorOpaqueCaptureDescriptorDataARM #elsewhere volk;
vkGetTensorViewOpaqueCaptureDescriptorDataARM: PFN_vkGetTensorViewOpaqueCaptureDescriptorDataARM #elsewhere volk;

vkCmdSetAttachmentFeedbackLoopEnableEXT: PFN_vkCmdSetAttachmentFeedbackLoopEnableEXT #elsewhere volk;

vkGetBufferDeviceAddressEXT: PFN_vkGetBufferDeviceAddressEXT #elsewhere volk;

vkGetCalibratedTimestampsEXT: PFN_vkGetCalibratedTimestampsEXT #elsewhere volk;

vkCmdSetColorWriteEnableEXT: PFN_vkCmdSetColorWriteEnableEXT #elsewhere volk;

vkCmdBeginConditionalRenderingEXT: PFN_vkCmdBeginConditionalRenderingEXT #elsewhere volk;
vkCmdEndConditionalRenderingEXT: PFN_vkCmdEndConditionalRenderingEXT #elsewhere volk;

vkCmdBeginCustomResolveEXT: PFN_vkCmdBeginCustomResolveEXT #elsewhere volk;

vkCmdDebugMarkerBeginEXT: PFN_vkCmdDebugMarkerBeginEXT #elsewhere volk;
vkCmdDebugMarkerEndEXT: PFN_vkCmdDebugMarkerEndEXT #elsewhere volk;
vkCmdDebugMarkerInsertEXT: PFN_vkCmdDebugMarkerInsertEXT #elsewhere volk;
vkDebugMarkerSetObjectNameEXT: PFN_vkDebugMarkerSetObjectNameEXT #elsewhere volk;
vkDebugMarkerSetObjectTagEXT: PFN_vkDebugMarkerSetObjectTagEXT #elsewhere volk;

vkCmdSetDepthBias2EXT: PFN_vkCmdSetDepthBias2EXT #elsewhere volk;

vkCmdBindDescriptorBufferEmbeddedSamplersEXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplersEXT #elsewhere volk;
vkCmdBindDescriptorBuffersEXT: PFN_vkCmdBindDescriptorBuffersEXT #elsewhere volk;
vkCmdSetDescriptorBufferOffsetsEXT: PFN_vkCmdSetDescriptorBufferOffsetsEXT #elsewhere volk;
vkGetBufferOpaqueCaptureDescriptorDataEXT: PFN_vkGetBufferOpaqueCaptureDescriptorDataEXT #elsewhere volk;
vkGetDescriptorEXT: PFN_vkGetDescriptorEXT #elsewhere volk;
vkGetDescriptorSetLayoutBindingOffsetEXT: PFN_vkGetDescriptorSetLayoutBindingOffsetEXT #elsewhere volk;
vkGetDescriptorSetLayoutSizeEXT: PFN_vkGetDescriptorSetLayoutSizeEXT #elsewhere volk;
vkGetImageOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageOpaqueCaptureDescriptorDataEXT #elsewhere volk;
vkGetImageViewOpaqueCaptureDescriptorDataEXT: PFN_vkGetImageViewOpaqueCaptureDescriptorDataEXT #elsewhere volk;
vkGetSamplerOpaqueCaptureDescriptorDataEXT: PFN_vkGetSamplerOpaqueCaptureDescriptorDataEXT #elsewhere volk;

vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT: PFN_vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT #elsewhere volk;

vkCmdBindResourceHeapEXT: PFN_vkCmdBindResourceHeapEXT #elsewhere volk;
vkCmdBindSamplerHeapEXT: PFN_vkCmdBindSamplerHeapEXT #elsewhere volk;
vkCmdPushDataEXT: PFN_vkCmdPushDataEXT #elsewhere volk;
vkGetImageOpaqueCaptureDataEXT: PFN_vkGetImageOpaqueCaptureDataEXT #elsewhere volk;
vkWriteResourceDescriptorsEXT: PFN_vkWriteResourceDescriptorsEXT #elsewhere volk;
vkWriteSamplerDescriptorsEXT: PFN_vkWriteSamplerDescriptorsEXT #elsewhere volk;

vkRegisterCustomBorderColorEXT: PFN_vkRegisterCustomBorderColorEXT #elsewhere volk;
vkUnregisterCustomBorderColorEXT: PFN_vkUnregisterCustomBorderColorEXT #elsewhere volk;

vkGetTensorOpaqueCaptureDataARM: PFN_vkGetTensorOpaqueCaptureDataARM #elsewhere volk;

vkGetDeviceFaultInfoEXT: PFN_vkGetDeviceFaultInfoEXT #elsewhere volk;

vkCmdExecuteGeneratedCommandsEXT: PFN_vkCmdExecuteGeneratedCommandsEXT #elsewhere volk;
vkCmdPreprocessGeneratedCommandsEXT: PFN_vkCmdPreprocessGeneratedCommandsEXT #elsewhere volk;
vkCreateIndirectCommandsLayoutEXT: PFN_vkCreateIndirectCommandsLayoutEXT #elsewhere volk;
vkCreateIndirectExecutionSetEXT: PFN_vkCreateIndirectExecutionSetEXT #elsewhere volk;
vkDestroyIndirectCommandsLayoutEXT: PFN_vkDestroyIndirectCommandsLayoutEXT #elsewhere volk;
vkDestroyIndirectExecutionSetEXT: PFN_vkDestroyIndirectExecutionSetEXT #elsewhere volk;
vkGetGeneratedCommandsMemoryRequirementsEXT: PFN_vkGetGeneratedCommandsMemoryRequirementsEXT #elsewhere volk;
vkUpdateIndirectExecutionSetPipelineEXT: PFN_vkUpdateIndirectExecutionSetPipelineEXT #elsewhere volk;
vkUpdateIndirectExecutionSetShaderEXT: PFN_vkUpdateIndirectExecutionSetShaderEXT #elsewhere volk;

vkCmdSetDiscardRectangleEXT: PFN_vkCmdSetDiscardRectangleEXT #elsewhere volk;

vkCmdSetDiscardRectangleEnableEXT: PFN_vkCmdSetDiscardRectangleEnableEXT #elsewhere volk;
vkCmdSetDiscardRectangleModeEXT: PFN_vkCmdSetDiscardRectangleModeEXT #elsewhere volk;

vkDisplayPowerControlEXT: PFN_vkDisplayPowerControlEXT #elsewhere volk;
vkGetSwapchainCounterEXT: PFN_vkGetSwapchainCounterEXT #elsewhere volk;
vkRegisterDeviceEventEXT: PFN_vkRegisterDeviceEventEXT #elsewhere volk;
vkRegisterDisplayEventEXT: PFN_vkRegisterDisplayEventEXT #elsewhere volk;

vkGetMemoryHostPointerPropertiesEXT: PFN_vkGetMemoryHostPointerPropertiesEXT #elsewhere volk;

vkCmdEndRendering2EXT: PFN_vkCmdEndRendering2EXT #elsewhere volk;

vkAcquireFullScreenExclusiveModeEXT: PFN_vkAcquireFullScreenExclusiveModeEXT #elsewhere volk;
vkReleaseFullScreenExclusiveModeEXT: PFN_vkReleaseFullScreenExclusiveModeEXT #elsewhere volk;

vkGetDeviceGroupSurfacePresentModes2EXT: PFN_vkGetDeviceGroupSurfacePresentModes2EXT #elsewhere volk;

vkSetHdrMetadataEXT: PFN_vkSetHdrMetadataEXT #elsewhere volk;

vkCopyImageToImageEXT: PFN_vkCopyImageToImageEXT #elsewhere volk;
vkCopyImageToMemoryEXT: PFN_vkCopyImageToMemoryEXT #elsewhere volk;
vkCopyMemoryToImageEXT: PFN_vkCopyMemoryToImageEXT #elsewhere volk;
vkTransitionImageLayoutEXT: PFN_vkTransitionImageLayoutEXT #elsewhere volk;

vkResetQueryPoolEXT: PFN_vkResetQueryPoolEXT #elsewhere volk;

vkGetImageDrmFormatModifierPropertiesEXT: PFN_vkGetImageDrmFormatModifierPropertiesEXT #elsewhere volk;

vkCmdSetLineStippleEXT: PFN_vkCmdSetLineStippleEXT #elsewhere volk;

vkCmdDecompressMemoryEXT: PFN_vkCmdDecompressMemoryEXT #elsewhere volk;
vkCmdDecompressMemoryIndirectCountEXT: PFN_vkCmdDecompressMemoryIndirectCountEXT #elsewhere volk;

vkCmdDrawMeshTasksEXT: PFN_vkCmdDrawMeshTasksEXT #elsewhere volk;
vkCmdDrawMeshTasksIndirectEXT: PFN_vkCmdDrawMeshTasksIndirectEXT #elsewhere volk;

vkCmdDrawMeshTasksIndirectCountEXT: PFN_vkCmdDrawMeshTasksIndirectCountEXT #elsewhere volk;

vkCmdDrawMultiEXT: PFN_vkCmdDrawMultiEXT #elsewhere volk;
vkCmdDrawMultiIndexedEXT: PFN_vkCmdDrawMultiIndexedEXT #elsewhere volk;

vkBuildMicromapsEXT: PFN_vkBuildMicromapsEXT #elsewhere volk;
vkCmdBuildMicromapsEXT: PFN_vkCmdBuildMicromapsEXT #elsewhere volk;
vkCmdCopyMemoryToMicromapEXT: PFN_vkCmdCopyMemoryToMicromapEXT #elsewhere volk;
vkCmdCopyMicromapEXT: PFN_vkCmdCopyMicromapEXT #elsewhere volk;
vkCmdCopyMicromapToMemoryEXT: PFN_vkCmdCopyMicromapToMemoryEXT #elsewhere volk;
vkCmdWriteMicromapsPropertiesEXT: PFN_vkCmdWriteMicromapsPropertiesEXT #elsewhere volk;
vkCopyMemoryToMicromapEXT: PFN_vkCopyMemoryToMicromapEXT #elsewhere volk;
vkCopyMicromapEXT: PFN_vkCopyMicromapEXT #elsewhere volk;
vkCopyMicromapToMemoryEXT: PFN_vkCopyMicromapToMemoryEXT #elsewhere volk;
vkCreateMicromapEXT: PFN_vkCreateMicromapEXT #elsewhere volk;
vkDestroyMicromapEXT: PFN_vkDestroyMicromapEXT #elsewhere volk;
vkGetDeviceMicromapCompatibilityEXT: PFN_vkGetDeviceMicromapCompatibilityEXT #elsewhere volk;
vkGetMicromapBuildSizesEXT: PFN_vkGetMicromapBuildSizesEXT #elsewhere volk;
vkWriteMicromapsPropertiesEXT: PFN_vkWriteMicromapsPropertiesEXT #elsewhere volk;

vkSetDeviceMemoryPriorityEXT: PFN_vkSetDeviceMemoryPriorityEXT #elsewhere volk;

vkGetPipelinePropertiesEXT: PFN_vkGetPipelinePropertiesEXT #elsewhere volk;

vkGetPastPresentationTimingEXT: PFN_vkGetPastPresentationTimingEXT #elsewhere volk;
vkGetSwapchainTimeDomainPropertiesEXT: PFN_vkGetSwapchainTimeDomainPropertiesEXT #elsewhere volk;
vkGetSwapchainTimingPropertiesEXT: PFN_vkGetSwapchainTimingPropertiesEXT #elsewhere volk;
vkSetSwapchainPresentTimingQueueSizeEXT: PFN_vkSetSwapchainPresentTimingQueueSizeEXT #elsewhere volk;

vkCmdSetPrimitiveRestartIndexEXT: PFN_vkCmdSetPrimitiveRestartIndexEXT #elsewhere volk;

vkCreatePrivateDataSlotEXT: PFN_vkCreatePrivateDataSlotEXT #elsewhere volk;
vkDestroyPrivateDataSlotEXT: PFN_vkDestroyPrivateDataSlotEXT #elsewhere volk;
vkGetPrivateDataEXT: PFN_vkGetPrivateDataEXT #elsewhere volk;
vkSetPrivateDataEXT: PFN_vkSetPrivateDataEXT #elsewhere volk;

vkCmdSetSampleLocationsEXT: PFN_vkCmdSetSampleLocationsEXT #elsewhere volk;

vkGetShaderModuleCreateInfoIdentifierEXT: PFN_vkGetShaderModuleCreateInfoIdentifierEXT #elsewhere volk;
vkGetShaderModuleIdentifierEXT: PFN_vkGetShaderModuleIdentifierEXT #elsewhere volk;

vkCmdBindShadersEXT: PFN_vkCmdBindShadersEXT #elsewhere volk;
vkCreateShadersEXT: PFN_vkCreateShadersEXT #elsewhere volk;
vkDestroyShaderEXT: PFN_vkDestroyShaderEXT #elsewhere volk;
vkGetShaderBinaryDataEXT: PFN_vkGetShaderBinaryDataEXT #elsewhere volk;

vkReleaseSwapchainImagesEXT: PFN_vkReleaseSwapchainImagesEXT #elsewhere volk;

vkCmdBeginQueryIndexedEXT: PFN_vkCmdBeginQueryIndexedEXT #elsewhere volk;
vkCmdBeginTransformFeedbackEXT: PFN_vkCmdBeginTransformFeedbackEXT #elsewhere volk;
vkCmdBindTransformFeedbackBuffersEXT: PFN_vkCmdBindTransformFeedbackBuffersEXT #elsewhere volk;
vkCmdDrawIndirectByteCountEXT: PFN_vkCmdDrawIndirectByteCountEXT #elsewhere volk;
vkCmdEndQueryIndexedEXT: PFN_vkCmdEndQueryIndexedEXT #elsewhere volk;
vkCmdEndTransformFeedbackEXT: PFN_vkCmdEndTransformFeedbackEXT #elsewhere volk;

vkCreateValidationCacheEXT: PFN_vkCreateValidationCacheEXT #elsewhere volk;
vkDestroyValidationCacheEXT: PFN_vkDestroyValidationCacheEXT #elsewhere volk;
vkGetValidationCacheDataEXT: PFN_vkGetValidationCacheDataEXT #elsewhere volk;
vkMergeValidationCachesEXT: PFN_vkMergeValidationCachesEXT #elsewhere volk;

vkGetPastPresentationTimingGOOGLE: PFN_vkGetPastPresentationTimingGOOGLE #elsewhere volk;
vkGetRefreshCycleDurationGOOGLE: PFN_vkGetRefreshCycleDurationGOOGLE #elsewhere volk;

vkCmdDrawClusterHUAWEI: PFN_vkCmdDrawClusterHUAWEI #elsewhere volk;
vkCmdDrawClusterIndirectHUAWEI: PFN_vkCmdDrawClusterIndirectHUAWEI #elsewhere volk;

vkCmdBindInvocationMaskHUAWEI: PFN_vkCmdBindInvocationMaskHUAWEI #elsewhere volk;

vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI: PFN_vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI #elsewhere volk;

vkCmdSubpassShadingHUAWEI: PFN_vkCmdSubpassShadingHUAWEI #elsewhere volk;

vkAcquirePerformanceConfigurationINTEL: PFN_vkAcquirePerformanceConfigurationINTEL #elsewhere volk;
vkCmdSetPerformanceMarkerINTEL: PFN_vkCmdSetPerformanceMarkerINTEL #elsewhere volk;
vkCmdSetPerformanceOverrideINTEL: PFN_vkCmdSetPerformanceOverrideINTEL #elsewhere volk;
vkCmdSetPerformanceStreamMarkerINTEL: PFN_vkCmdSetPerformanceStreamMarkerINTEL #elsewhere volk;
vkGetPerformanceParameterINTEL: PFN_vkGetPerformanceParameterINTEL #elsewhere volk;
vkInitializePerformanceApiINTEL: PFN_vkInitializePerformanceApiINTEL #elsewhere volk;
vkQueueSetPerformanceConfigurationINTEL: PFN_vkQueueSetPerformanceConfigurationINTEL #elsewhere volk;
vkReleasePerformanceConfigurationINTEL: PFN_vkReleasePerformanceConfigurationINTEL #elsewhere volk;
vkUninitializePerformanceApiINTEL: PFN_vkUninitializePerformanceApiINTEL #elsewhere volk;

vkBuildAccelerationStructuresKHR: PFN_vkBuildAccelerationStructuresKHR #elsewhere volk;
vkCmdBuildAccelerationStructuresIndirectKHR: PFN_vkCmdBuildAccelerationStructuresIndirectKHR #elsewhere volk;
vkCmdBuildAccelerationStructuresKHR: PFN_vkCmdBuildAccelerationStructuresKHR #elsewhere volk;
vkCmdCopyAccelerationStructureKHR: PFN_vkCmdCopyAccelerationStructureKHR #elsewhere volk;
vkCmdCopyAccelerationStructureToMemoryKHR: PFN_vkCmdCopyAccelerationStructureToMemoryKHR #elsewhere volk;
vkCmdCopyMemoryToAccelerationStructureKHR: PFN_vkCmdCopyMemoryToAccelerationStructureKHR #elsewhere volk;
vkCmdWriteAccelerationStructuresPropertiesKHR: PFN_vkCmdWriteAccelerationStructuresPropertiesKHR #elsewhere volk;
vkCopyAccelerationStructureKHR: PFN_vkCopyAccelerationStructureKHR #elsewhere volk;
vkCopyAccelerationStructureToMemoryKHR: PFN_vkCopyAccelerationStructureToMemoryKHR #elsewhere volk;
vkCopyMemoryToAccelerationStructureKHR: PFN_vkCopyMemoryToAccelerationStructureKHR #elsewhere volk;
vkCreateAccelerationStructureKHR: PFN_vkCreateAccelerationStructureKHR #elsewhere volk;
vkDestroyAccelerationStructureKHR: PFN_vkDestroyAccelerationStructureKHR #elsewhere volk;
vkGetAccelerationStructureBuildSizesKHR: PFN_vkGetAccelerationStructureBuildSizesKHR #elsewhere volk;
vkGetAccelerationStructureDeviceAddressKHR: PFN_vkGetAccelerationStructureDeviceAddressKHR #elsewhere volk;
vkGetDeviceAccelerationStructureCompatibilityKHR: PFN_vkGetDeviceAccelerationStructureCompatibilityKHR #elsewhere volk;
vkWriteAccelerationStructuresPropertiesKHR: PFN_vkWriteAccelerationStructuresPropertiesKHR #elsewhere volk;

vkBindBufferMemory2KHR: PFN_vkBindBufferMemory2KHR #elsewhere volk;
vkBindImageMemory2KHR: PFN_vkBindImageMemory2KHR #elsewhere volk;

vkGetBufferDeviceAddressKHR: PFN_vkGetBufferDeviceAddressKHR #elsewhere volk;
vkGetBufferOpaqueCaptureAddressKHR: PFN_vkGetBufferOpaqueCaptureAddressKHR #elsewhere volk;
vkGetDeviceMemoryOpaqueCaptureAddressKHR: PFN_vkGetDeviceMemoryOpaqueCaptureAddressKHR #elsewhere volk;

vkGetCalibratedTimestampsKHR: PFN_vkGetCalibratedTimestampsKHR #elsewhere volk;

vkCmdBlitImage2KHR: PFN_vkCmdBlitImage2KHR #elsewhere volk;
vkCmdCopyBuffer2KHR: PFN_vkCmdCopyBuffer2KHR #elsewhere volk;
vkCmdCopyBufferToImage2KHR: PFN_vkCmdCopyBufferToImage2KHR #elsewhere volk;
vkCmdCopyImage2KHR: PFN_vkCmdCopyImage2KHR #elsewhere volk;
vkCmdCopyImageToBuffer2KHR: PFN_vkCmdCopyImageToBuffer2KHR #elsewhere volk;
vkCmdResolveImage2KHR: PFN_vkCmdResolveImage2KHR #elsewhere volk;

vkCmdCopyMemoryIndirectKHR: PFN_vkCmdCopyMemoryIndirectKHR #elsewhere volk;
vkCmdCopyMemoryToImageIndirectKHR: PFN_vkCmdCopyMemoryToImageIndirectKHR #elsewhere volk;

vkCmdBeginRenderPass2KHR: PFN_vkCmdBeginRenderPass2KHR #elsewhere volk;
vkCmdEndRenderPass2KHR: PFN_vkCmdEndRenderPass2KHR #elsewhere volk;
vkCmdNextSubpass2KHR: PFN_vkCmdNextSubpass2KHR #elsewhere volk;
vkCreateRenderPass2KHR: PFN_vkCreateRenderPass2KHR #elsewhere volk;

vkCreateDeferredOperationKHR: PFN_vkCreateDeferredOperationKHR #elsewhere volk;
vkDeferredOperationJoinKHR: PFN_vkDeferredOperationJoinKHR #elsewhere volk;
vkDestroyDeferredOperationKHR: PFN_vkDestroyDeferredOperationKHR #elsewhere volk;
vkGetDeferredOperationMaxConcurrencyKHR: PFN_vkGetDeferredOperationMaxConcurrencyKHR #elsewhere volk;
vkGetDeferredOperationResultKHR: PFN_vkGetDeferredOperationResultKHR #elsewhere volk;

vkCreateDescriptorUpdateTemplateKHR: PFN_vkCreateDescriptorUpdateTemplateKHR #elsewhere volk;
vkDestroyDescriptorUpdateTemplateKHR: PFN_vkDestroyDescriptorUpdateTemplateKHR #elsewhere volk;
vkUpdateDescriptorSetWithTemplateKHR: PFN_vkUpdateDescriptorSetWithTemplateKHR #elsewhere volk;

vkCmdBindIndexBuffer3KHR: PFN_vkCmdBindIndexBuffer3KHR #elsewhere volk;
vkCmdBindVertexBuffers3KHR: PFN_vkCmdBindVertexBuffers3KHR #elsewhere volk;
vkCmdCopyImageToMemoryKHR: PFN_vkCmdCopyImageToMemoryKHR #elsewhere volk;
vkCmdCopyMemoryKHR: PFN_vkCmdCopyMemoryKHR #elsewhere volk;
vkCmdCopyMemoryToImageKHR: PFN_vkCmdCopyMemoryToImageKHR #elsewhere volk;
vkCmdCopyQueryPoolResultsToMemoryKHR: PFN_vkCmdCopyQueryPoolResultsToMemoryKHR #elsewhere volk;
vkCmdDispatchIndirect2KHR: PFN_vkCmdDispatchIndirect2KHR #elsewhere volk;
vkCmdDrawIndexedIndirect2KHR: PFN_vkCmdDrawIndexedIndirect2KHR #elsewhere volk;
vkCmdDrawIndirect2KHR: PFN_vkCmdDrawIndirect2KHR #elsewhere volk;
vkCmdFillMemoryKHR: PFN_vkCmdFillMemoryKHR #elsewhere volk;
vkCmdUpdateMemoryKHR: PFN_vkCmdUpdateMemoryKHR #elsewhere volk;

vkCmdDrawIndexedIndirectCount2KHR: PFN_vkCmdDrawIndexedIndirectCount2KHR #elsewhere volk;
vkCmdDrawIndirectCount2KHR: PFN_vkCmdDrawIndirectCount2KHR #elsewhere volk;

vkCmdBeginConditionalRendering2EXT: PFN_vkCmdBeginConditionalRendering2EXT #elsewhere volk;

vkCmdBeginTransformFeedback2EXT: PFN_vkCmdBeginTransformFeedback2EXT #elsewhere volk;
vkCmdBindTransformFeedbackBuffers2EXT: PFN_vkCmdBindTransformFeedbackBuffers2EXT #elsewhere volk;
vkCmdDrawIndirectByteCount2EXT: PFN_vkCmdDrawIndirectByteCount2EXT #elsewhere volk;
vkCmdEndTransformFeedback2EXT: PFN_vkCmdEndTransformFeedback2EXT #elsewhere volk;

vkCmdDrawMeshTasksIndirect2EXT: PFN_vkCmdDrawMeshTasksIndirect2EXT #elsewhere volk;

vkCmdDrawMeshTasksIndirectCount2EXT: PFN_vkCmdDrawMeshTasksIndirectCount2EXT #elsewhere volk;

vkCmdWriteMarkerToMemoryAMD: PFN_vkCmdWriteMarkerToMemoryAMD #elsewhere volk;

vkCreateAccelerationStructure2KHR: PFN_vkCreateAccelerationStructure2KHR #elsewhere volk;

vkGetDeviceFaultDebugInfoKHR: PFN_vkGetDeviceFaultDebugInfoKHR #elsewhere volk;
vkGetDeviceFaultReportsKHR: PFN_vkGetDeviceFaultReportsKHR #elsewhere volk;

vkCmdDispatchBaseKHR: PFN_vkCmdDispatchBaseKHR #elsewhere volk;
vkCmdSetDeviceMaskKHR: PFN_vkCmdSetDeviceMaskKHR #elsewhere volk;
vkGetDeviceGroupPeerMemoryFeaturesKHR: PFN_vkGetDeviceGroupPeerMemoryFeaturesKHR #elsewhere volk;

vkCreateSharedSwapchainsKHR: PFN_vkCreateSharedSwapchainsKHR #elsewhere volk;

vkCmdDrawIndexedIndirectCountKHR: PFN_vkCmdDrawIndexedIndirectCountKHR #elsewhere volk;
vkCmdDrawIndirectCountKHR: PFN_vkCmdDrawIndirectCountKHR #elsewhere volk;

vkCmdBeginRenderingKHR: PFN_vkCmdBeginRenderingKHR #elsewhere volk;
vkCmdEndRenderingKHR: PFN_vkCmdEndRenderingKHR #elsewhere volk;

vkCmdSetRenderingAttachmentLocationsKHR: PFN_vkCmdSetRenderingAttachmentLocationsKHR #elsewhere volk;
vkCmdSetRenderingInputAttachmentIndicesKHR: PFN_vkCmdSetRenderingInputAttachmentIndicesKHR #elsewhere volk;

vkGetFenceFdKHR: PFN_vkGetFenceFdKHR #elsewhere volk;
vkImportFenceFdKHR: PFN_vkImportFenceFdKHR #elsewhere volk;

vkGetFenceWin32HandleKHR: PFN_vkGetFenceWin32HandleKHR #elsewhere volk;
vkImportFenceWin32HandleKHR: PFN_vkImportFenceWin32HandleKHR #elsewhere volk;

vkGetMemoryFdKHR: PFN_vkGetMemoryFdKHR #elsewhere volk;
vkGetMemoryFdPropertiesKHR: PFN_vkGetMemoryFdPropertiesKHR #elsewhere volk;

vkGetMemoryWin32HandleKHR: PFN_vkGetMemoryWin32HandleKHR #elsewhere volk;
vkGetMemoryWin32HandlePropertiesKHR: PFN_vkGetMemoryWin32HandlePropertiesKHR #elsewhere volk;

vkGetSemaphoreFdKHR: PFN_vkGetSemaphoreFdKHR #elsewhere volk;
vkImportSemaphoreFdKHR: PFN_vkImportSemaphoreFdKHR #elsewhere volk;

vkGetSemaphoreWin32HandleKHR: PFN_vkGetSemaphoreWin32HandleKHR #elsewhere volk;
vkImportSemaphoreWin32HandleKHR: PFN_vkImportSemaphoreWin32HandleKHR #elsewhere volk;

vkCmdSetFragmentShadingRateKHR: PFN_vkCmdSetFragmentShadingRateKHR #elsewhere volk;

vkGetBufferMemoryRequirements2KHR: PFN_vkGetBufferMemoryRequirements2KHR #elsewhere volk;
vkGetImageMemoryRequirements2KHR: PFN_vkGetImageMemoryRequirements2KHR #elsewhere volk;
vkGetImageSparseMemoryRequirements2KHR: PFN_vkGetImageSparseMemoryRequirements2KHR #elsewhere volk;

vkCmdSetLineStippleKHR: PFN_vkCmdSetLineStippleKHR #elsewhere volk;

vkTrimCommandPoolKHR: PFN_vkTrimCommandPoolKHR #elsewhere volk;

vkCmdEndRendering2KHR: PFN_vkCmdEndRendering2KHR #elsewhere volk;

vkGetDescriptorSetLayoutSupportKHR: PFN_vkGetDescriptorSetLayoutSupportKHR #elsewhere volk;

vkGetDeviceBufferMemoryRequirementsKHR: PFN_vkGetDeviceBufferMemoryRequirementsKHR #elsewhere volk;
vkGetDeviceImageMemoryRequirementsKHR: PFN_vkGetDeviceImageMemoryRequirementsKHR #elsewhere volk;
vkGetDeviceImageSparseMemoryRequirementsKHR: PFN_vkGetDeviceImageSparseMemoryRequirementsKHR #elsewhere volk;

vkCmdBindIndexBuffer2KHR: PFN_vkCmdBindIndexBuffer2KHR #elsewhere volk;
vkGetDeviceImageSubresourceLayoutKHR: PFN_vkGetDeviceImageSubresourceLayoutKHR #elsewhere volk;
vkGetImageSubresourceLayout2KHR: PFN_vkGetImageSubresourceLayout2KHR #elsewhere volk;
vkGetRenderingAreaGranularityKHR: PFN_vkGetRenderingAreaGranularityKHR #elsewhere volk;

vkCmdBindDescriptorSets2KHR: PFN_vkCmdBindDescriptorSets2KHR #elsewhere volk;
vkCmdPushConstants2KHR: PFN_vkCmdPushConstants2KHR #elsewhere volk;

vkCmdPushDescriptorSet2KHR: PFN_vkCmdPushDescriptorSet2KHR #elsewhere volk;
vkCmdPushDescriptorSetWithTemplate2KHR: PFN_vkCmdPushDescriptorSetWithTemplate2KHR #elsewhere volk;

vkCmdBindDescriptorBufferEmbeddedSamplers2EXT: PFN_vkCmdBindDescriptorBufferEmbeddedSamplers2EXT #elsewhere volk;
vkCmdSetDescriptorBufferOffsets2EXT: PFN_vkCmdSetDescriptorBufferOffsets2EXT #elsewhere volk;

vkMapMemory2KHR: PFN_vkMapMemory2KHR #elsewhere volk;
vkUnmapMemory2KHR: PFN_vkUnmapMemory2KHR #elsewhere volk;

vkAcquireProfilingLockKHR: PFN_vkAcquireProfilingLockKHR #elsewhere volk;
vkReleaseProfilingLockKHR: PFN_vkReleaseProfilingLockKHR #elsewhere volk;

vkCreatePipelineBinariesKHR: PFN_vkCreatePipelineBinariesKHR #elsewhere volk;
vkDestroyPipelineBinaryKHR: PFN_vkDestroyPipelineBinaryKHR #elsewhere volk;
vkGetPipelineBinaryDataKHR: PFN_vkGetPipelineBinaryDataKHR #elsewhere volk;
vkGetPipelineKeyKHR: PFN_vkGetPipelineKeyKHR #elsewhere volk;
vkReleaseCapturedPipelineDataKHR: PFN_vkReleaseCapturedPipelineDataKHR #elsewhere volk;

vkGetPipelineExecutableInternalRepresentationsKHR: PFN_vkGetPipelineExecutableInternalRepresentationsKHR #elsewhere volk;
vkGetPipelineExecutablePropertiesKHR: PFN_vkGetPipelineExecutablePropertiesKHR #elsewhere volk;
vkGetPipelineExecutableStatisticsKHR: PFN_vkGetPipelineExecutableStatisticsKHR #elsewhere volk;

vkWaitForPresentKHR: PFN_vkWaitForPresentKHR #elsewhere volk;

vkWaitForPresent2KHR: PFN_vkWaitForPresent2KHR #elsewhere volk;

vkCmdPushDescriptorSetKHR: PFN_vkCmdPushDescriptorSetKHR #elsewhere volk;

vkCmdTraceRaysIndirect2KHR: PFN_vkCmdTraceRaysIndirect2KHR #elsewhere volk;

vkCmdSetRayTracingPipelineStackSizeKHR: PFN_vkCmdSetRayTracingPipelineStackSizeKHR #elsewhere volk;
vkCmdTraceRaysIndirectKHR: PFN_vkCmdTraceRaysIndirectKHR #elsewhere volk;
vkCmdTraceRaysKHR: PFN_vkCmdTraceRaysKHR #elsewhere volk;
vkCreateRayTracingPipelinesKHR: PFN_vkCreateRayTracingPipelinesKHR #elsewhere volk;
vkGetRayTracingCaptureReplayShaderGroupHandlesKHR: PFN_vkGetRayTracingCaptureReplayShaderGroupHandlesKHR #elsewhere volk;
vkGetRayTracingShaderGroupHandlesKHR: PFN_vkGetRayTracingShaderGroupHandlesKHR #elsewhere volk;
vkGetRayTracingShaderGroupStackSizeKHR: PFN_vkGetRayTracingShaderGroupStackSizeKHR #elsewhere volk;

vkCreateSamplerYcbcrConversionKHR: PFN_vkCreateSamplerYcbcrConversionKHR #elsewhere volk;
vkDestroySamplerYcbcrConversionKHR: PFN_vkDestroySamplerYcbcrConversionKHR #elsewhere volk;

vkGetSwapchainStatusKHR: PFN_vkGetSwapchainStatusKHR #elsewhere volk;

vkAcquireNextImageKHR: PFN_vkAcquireNextImageKHR #elsewhere volk;
vkCreateSwapchainKHR: PFN_vkCreateSwapchainKHR #elsewhere volk;
vkDestroySwapchainKHR: PFN_vkDestroySwapchainKHR #elsewhere volk;
vkGetSwapchainImagesKHR: PFN_vkGetSwapchainImagesKHR #elsewhere volk;
vkQueuePresentKHR: PFN_vkQueuePresentKHR #elsewhere volk;

vkReleaseSwapchainImagesKHR: PFN_vkReleaseSwapchainImagesKHR #elsewhere volk;

vkCmdPipelineBarrier2KHR: PFN_vkCmdPipelineBarrier2KHR #elsewhere volk;
vkCmdResetEvent2KHR: PFN_vkCmdResetEvent2KHR #elsewhere volk;
vkCmdSetEvent2KHR: PFN_vkCmdSetEvent2KHR #elsewhere volk;
vkCmdWaitEvents2KHR: PFN_vkCmdWaitEvents2KHR #elsewhere volk;
vkCmdWriteTimestamp2KHR: PFN_vkCmdWriteTimestamp2KHR #elsewhere volk;
vkQueueSubmit2KHR: PFN_vkQueueSubmit2KHR #elsewhere volk;

vkGetSemaphoreCounterValueKHR: PFN_vkGetSemaphoreCounterValueKHR #elsewhere volk;
vkSignalSemaphoreKHR: PFN_vkSignalSemaphoreKHR #elsewhere volk;
vkWaitSemaphoresKHR: PFN_vkWaitSemaphoresKHR #elsewhere volk;

vkCmdDecodeVideoKHR: PFN_vkCmdDecodeVideoKHR #elsewhere volk;

vkCmdEncodeVideoKHR: PFN_vkCmdEncodeVideoKHR #elsewhere volk;
vkGetEncodedVideoSessionParametersKHR: PFN_vkGetEncodedVideoSessionParametersKHR #elsewhere volk;

vkBindVideoSessionMemoryKHR: PFN_vkBindVideoSessionMemoryKHR #elsewhere volk;
vkCmdBeginVideoCodingKHR: PFN_vkCmdBeginVideoCodingKHR #elsewhere volk;
vkCmdControlVideoCodingKHR: PFN_vkCmdControlVideoCodingKHR #elsewhere volk;
vkCmdEndVideoCodingKHR: PFN_vkCmdEndVideoCodingKHR #elsewhere volk;
vkCreateVideoSessionKHR: PFN_vkCreateVideoSessionKHR #elsewhere volk;
vkCreateVideoSessionParametersKHR: PFN_vkCreateVideoSessionParametersKHR #elsewhere volk;
vkDestroyVideoSessionKHR: PFN_vkDestroyVideoSessionKHR #elsewhere volk;
vkDestroyVideoSessionParametersKHR: PFN_vkDestroyVideoSessionParametersKHR #elsewhere volk;
vkGetVideoSessionMemoryRequirementsKHR: PFN_vkGetVideoSessionMemoryRequirementsKHR #elsewhere volk;
vkUpdateVideoSessionParametersKHR: PFN_vkUpdateVideoSessionParametersKHR #elsewhere volk;

vkCmdCuLaunchKernelNVX: PFN_vkCmdCuLaunchKernelNVX #elsewhere volk;
vkCreateCuFunctionNVX: PFN_vkCreateCuFunctionNVX #elsewhere volk;
vkCreateCuModuleNVX: PFN_vkCreateCuModuleNVX #elsewhere volk;
vkDestroyCuFunctionNVX: PFN_vkDestroyCuFunctionNVX #elsewhere volk;
vkDestroyCuModuleNVX: PFN_vkDestroyCuModuleNVX #elsewhere volk;

vkGetImageViewHandleNVX: PFN_vkGetImageViewHandleNVX #elsewhere volk;

vkGetImageViewHandle64NVX: PFN_vkGetImageViewHandle64NVX #elsewhere volk;

vkGetImageViewAddressNVX: PFN_vkGetImageViewAddressNVX #elsewhere volk;

vkGetDeviceCombinedImageSamplerIndexNVX: PFN_vkGetDeviceCombinedImageSamplerIndexNVX #elsewhere volk;

vkCmdSetViewportWScalingNV: PFN_vkCmdSetViewportWScalingNV #elsewhere volk;

vkCmdBuildClusterAccelerationStructureIndirectNV: PFN_vkCmdBuildClusterAccelerationStructureIndirectNV #elsewhere volk;
vkGetClusterAccelerationStructureBuildSizesNV: PFN_vkGetClusterAccelerationStructureBuildSizesNV #elsewhere volk;

vkCmdSetComputeOccupancyPriorityNV: PFN_vkCmdSetComputeOccupancyPriorityNV #elsewhere volk;

vkCmdConvertCooperativeVectorMatrixNV: PFN_vkCmdConvertCooperativeVectorMatrixNV #elsewhere volk;
vkConvertCooperativeVectorMatrixNV: PFN_vkConvertCooperativeVectorMatrixNV #elsewhere volk;

vkCmdCopyMemoryIndirectNV: PFN_vkCmdCopyMemoryIndirectNV #elsewhere volk;
vkCmdCopyMemoryToImageIndirectNV: PFN_vkCmdCopyMemoryToImageIndirectNV #elsewhere volk;

vkCmdSetCheckpointNV: PFN_vkCmdSetCheckpointNV #elsewhere volk;
vkGetQueueCheckpointDataNV: PFN_vkGetQueueCheckpointDataNV #elsewhere volk;

vkGetQueueCheckpointData2NV: PFN_vkGetQueueCheckpointData2NV #elsewhere volk;

vkCmdBindPipelineShaderGroupNV: PFN_vkCmdBindPipelineShaderGroupNV #elsewhere volk;
vkCmdExecuteGeneratedCommandsNV: PFN_vkCmdExecuteGeneratedCommandsNV #elsewhere volk;
vkCmdPreprocessGeneratedCommandsNV: PFN_vkCmdPreprocessGeneratedCommandsNV #elsewhere volk;
vkCreateIndirectCommandsLayoutNV: PFN_vkCreateIndirectCommandsLayoutNV #elsewhere volk;
vkDestroyIndirectCommandsLayoutNV: PFN_vkDestroyIndirectCommandsLayoutNV #elsewhere volk;
vkGetGeneratedCommandsMemoryRequirementsNV: PFN_vkGetGeneratedCommandsMemoryRequirementsNV #elsewhere volk;

vkCmdUpdatePipelineIndirectBufferNV: PFN_vkCmdUpdatePipelineIndirectBufferNV #elsewhere volk;
vkGetPipelineIndirectDeviceAddressNV: PFN_vkGetPipelineIndirectDeviceAddressNV #elsewhere volk;
vkGetPipelineIndirectMemoryRequirementsNV: PFN_vkGetPipelineIndirectMemoryRequirementsNV #elsewhere volk;

vkCreateExternalComputeQueueNV: PFN_vkCreateExternalComputeQueueNV #elsewhere volk;
vkDestroyExternalComputeQueueNV: PFN_vkDestroyExternalComputeQueueNV #elsewhere volk;
vkGetExternalComputeQueueDataNV: PFN_vkGetExternalComputeQueueDataNV #elsewhere volk;

vkGetMemoryRemoteAddressNV: PFN_vkGetMemoryRemoteAddressNV #elsewhere volk;

vkGetMemoryWin32HandleNV: PFN_vkGetMemoryWin32HandleNV #elsewhere volk;

vkCmdSetFragmentShadingRateEnumNV: PFN_vkCmdSetFragmentShadingRateEnumNV #elsewhere volk;

vkGetLatencyTimingsLegacyNV: PFN_vkGetLatencyTimingsLegacyNV #elsewhere volk;
vkGetSleepStatusLegacyNV: PFN_vkGetSleepStatusLegacyNV #elsewhere volk;
vkLatencySleepLegacyNV: PFN_vkLatencySleepLegacyNV #elsewhere volk;
vkQueueNotifyOutOfBandLegacyNV: PFN_vkQueueNotifyOutOfBandLegacyNV #elsewhere volk;
vkSetLatencyMarkerLegacyNV: PFN_vkSetLatencyMarkerLegacyNV #elsewhere volk;
vkSetLatencySleepModeLegacyNV: PFN_vkSetLatencySleepModeLegacyNV #elsewhere volk;
vkShutdownLatencyDeviceLegacyNV: PFN_vkShutdownLatencyDeviceLegacyNV #elsewhere volk;

vkGetLatencyTimingsNV: PFN_vkGetLatencyTimingsNV #elsewhere volk;
vkLatencySleepNV: PFN_vkLatencySleepNV #elsewhere volk;
vkQueueNotifyOutOfBandNV: PFN_vkQueueNotifyOutOfBandNV #elsewhere volk;
vkSetLatencyMarkerNV: PFN_vkSetLatencyMarkerNV #elsewhere volk;
vkSetLatencySleepModeNV: PFN_vkSetLatencySleepModeNV #elsewhere volk;

vkCmdDecompressMemoryIndirectCountNV: PFN_vkCmdDecompressMemoryIndirectCountNV #elsewhere volk;
vkCmdDecompressMemoryNV: PFN_vkCmdDecompressMemoryNV #elsewhere volk;

vkCmdDrawMeshTasksIndirectNV: PFN_vkCmdDrawMeshTasksIndirectNV #elsewhere volk;
vkCmdDrawMeshTasksNV: PFN_vkCmdDrawMeshTasksNV #elsewhere volk;

vkCmdDrawMeshTasksIndirectCountNV: PFN_vkCmdDrawMeshTasksIndirectCountNV #elsewhere volk;

vkBindOpticalFlowSessionImageNV: PFN_vkBindOpticalFlowSessionImageNV #elsewhere volk;
vkCmdOpticalFlowExecuteNV: PFN_vkCmdOpticalFlowExecuteNV #elsewhere volk;
vkCreateOpticalFlowSessionNV: PFN_vkCreateOpticalFlowSessionNV #elsewhere volk;
vkDestroyOpticalFlowSessionNV: PFN_vkDestroyOpticalFlowSessionNV #elsewhere volk;

vkCmdBuildPartitionedAccelerationStructuresNV: PFN_vkCmdBuildPartitionedAccelerationStructuresNV #elsewhere volk;
vkGetPartitionedAccelerationStructuresBuildSizesNV: PFN_vkGetPartitionedAccelerationStructuresBuildSizesNV #elsewhere volk;

vkBindAccelerationStructureMemoryNV: PFN_vkBindAccelerationStructureMemoryNV #elsewhere volk;
vkCmdBuildAccelerationStructureNV: PFN_vkCmdBuildAccelerationStructureNV #elsewhere volk;
vkCmdCopyAccelerationStructureNV: PFN_vkCmdCopyAccelerationStructureNV #elsewhere volk;
vkCmdTraceRaysNV: PFN_vkCmdTraceRaysNV #elsewhere volk;
vkCmdWriteAccelerationStructuresPropertiesNV: PFN_vkCmdWriteAccelerationStructuresPropertiesNV #elsewhere volk;
vkCompileDeferredNV: PFN_vkCompileDeferredNV #elsewhere volk;
vkCreateAccelerationStructureNV: PFN_vkCreateAccelerationStructureNV #elsewhere volk;
vkCreateRayTracingPipelinesNV: PFN_vkCreateRayTracingPipelinesNV #elsewhere volk;
vkDestroyAccelerationStructureNV: PFN_vkDestroyAccelerationStructureNV #elsewhere volk;
vkGetAccelerationStructureHandleNV: PFN_vkGetAccelerationStructureHandleNV #elsewhere volk;
vkGetAccelerationStructureMemoryRequirementsNV: PFN_vkGetAccelerationStructureMemoryRequirementsNV #elsewhere volk;
vkGetRayTracingShaderGroupHandlesNV: PFN_vkGetRayTracingShaderGroupHandlesNV #elsewhere volk;

vkCmdSetExclusiveScissorEnableNV: PFN_vkCmdSetExclusiveScissorEnableNV #elsewhere volk;

vkCmdSetExclusiveScissorNV: PFN_vkCmdSetExclusiveScissorNV #elsewhere volk;

vkCmdBindShadingRateImageNV: PFN_vkCmdBindShadingRateImageNV #elsewhere volk;
vkCmdSetCoarseSampleOrderNV: PFN_vkCmdSetCoarseSampleOrderNV #elsewhere volk;
vkCmdSetViewportShadingRatePaletteNV: PFN_vkCmdSetViewportShadingRatePaletteNV #elsewhere volk;

vkQueueSetPerfHintQCOM: PFN_vkQueueSetPerfHintQCOM #elsewhere volk;

vkCmdBindTileMemoryQCOM: PFN_vkCmdBindTileMemoryQCOM #elsewhere volk;

vkGetDynamicRenderingTilePropertiesQCOM: PFN_vkGetDynamicRenderingTilePropertiesQCOM #elsewhere volk;
vkGetFramebufferTilePropertiesQCOM: PFN_vkGetFramebufferTilePropertiesQCOM #elsewhere volk;

vkCmdBeginPerTileExecutionQCOM: PFN_vkCmdBeginPerTileExecutionQCOM #elsewhere volk;
vkCmdDispatchTileQCOM: PFN_vkCmdDispatchTileQCOM #elsewhere volk;
vkCmdEndPerTileExecutionQCOM: PFN_vkCmdEndPerTileExecutionQCOM #elsewhere volk;

vkGetDescriptorSetHostMappingVALVE: PFN_vkGetDescriptorSetHostMappingVALVE #elsewhere volk;
vkGetDescriptorSetLayoutHostMappingInfoVALVE: PFN_vkGetDescriptorSetLayoutHostMappingInfoVALVE #elsewhere volk;

vkCmdSetDepthClampRangeEXT: PFN_vkCmdSetDepthClampRangeEXT #elsewhere volk;

vkCmdBindVertexBuffers2EXT: PFN_vkCmdBindVertexBuffers2EXT #elsewhere volk;
vkCmdSetCullModeEXT: PFN_vkCmdSetCullModeEXT #elsewhere volk;
vkCmdSetDepthBoundsTestEnableEXT: PFN_vkCmdSetDepthBoundsTestEnableEXT #elsewhere volk;
vkCmdSetDepthCompareOpEXT: PFN_vkCmdSetDepthCompareOpEXT #elsewhere volk;
vkCmdSetDepthTestEnableEXT: PFN_vkCmdSetDepthTestEnableEXT #elsewhere volk;
vkCmdSetDepthWriteEnableEXT: PFN_vkCmdSetDepthWriteEnableEXT #elsewhere volk;
vkCmdSetFrontFaceEXT: PFN_vkCmdSetFrontFaceEXT #elsewhere volk;
vkCmdSetPrimitiveTopologyEXT: PFN_vkCmdSetPrimitiveTopologyEXT #elsewhere volk;
vkCmdSetScissorWithCountEXT: PFN_vkCmdSetScissorWithCountEXT #elsewhere volk;
vkCmdSetStencilOpEXT: PFN_vkCmdSetStencilOpEXT #elsewhere volk;
vkCmdSetStencilTestEnableEXT: PFN_vkCmdSetStencilTestEnableEXT #elsewhere volk;
vkCmdSetViewportWithCountEXT: PFN_vkCmdSetViewportWithCountEXT #elsewhere volk;

vkCmdSetDepthBiasEnableEXT: PFN_vkCmdSetDepthBiasEnableEXT #elsewhere volk;
vkCmdSetLogicOpEXT: PFN_vkCmdSetLogicOpEXT #elsewhere volk;
vkCmdSetPatchControlPointsEXT: PFN_vkCmdSetPatchControlPointsEXT #elsewhere volk;
vkCmdSetPrimitiveRestartEnableEXT: PFN_vkCmdSetPrimitiveRestartEnableEXT #elsewhere volk;
vkCmdSetRasterizerDiscardEnableEXT: PFN_vkCmdSetRasterizerDiscardEnableEXT #elsewhere volk;

vkCmdSetAlphaToCoverageEnableEXT: PFN_vkCmdSetAlphaToCoverageEnableEXT #elsewhere volk;
vkCmdSetAlphaToOneEnableEXT: PFN_vkCmdSetAlphaToOneEnableEXT #elsewhere volk;
vkCmdSetColorBlendEnableEXT: PFN_vkCmdSetColorBlendEnableEXT #elsewhere volk;
vkCmdSetColorBlendEquationEXT: PFN_vkCmdSetColorBlendEquationEXT #elsewhere volk;
vkCmdSetColorWriteMaskEXT: PFN_vkCmdSetColorWriteMaskEXT #elsewhere volk;
vkCmdSetDepthClampEnableEXT: PFN_vkCmdSetDepthClampEnableEXT #elsewhere volk;
vkCmdSetLogicOpEnableEXT: PFN_vkCmdSetLogicOpEnableEXT #elsewhere volk;
vkCmdSetPolygonModeEXT: PFN_vkCmdSetPolygonModeEXT #elsewhere volk;
vkCmdSetRasterizationSamplesEXT: PFN_vkCmdSetRasterizationSamplesEXT #elsewhere volk;
vkCmdSetSampleMaskEXT: PFN_vkCmdSetSampleMaskEXT #elsewhere volk;

vkCmdSetTessellationDomainOriginEXT: PFN_vkCmdSetTessellationDomainOriginEXT #elsewhere volk;

vkCmdSetRasterizationStreamEXT: PFN_vkCmdSetRasterizationStreamEXT #elsewhere volk;

vkCmdSetConservativeRasterizationModeEXT: PFN_vkCmdSetConservativeRasterizationModeEXT #elsewhere volk;
vkCmdSetExtraPrimitiveOverestimationSizeEXT: PFN_vkCmdSetExtraPrimitiveOverestimationSizeEXT #elsewhere volk;

vkCmdSetDepthClipEnableEXT: PFN_vkCmdSetDepthClipEnableEXT #elsewhere volk;

vkCmdSetSampleLocationsEnableEXT: PFN_vkCmdSetSampleLocationsEnableEXT #elsewhere volk;

vkCmdSetColorBlendAdvancedEXT: PFN_vkCmdSetColorBlendAdvancedEXT #elsewhere volk;

vkCmdSetProvokingVertexModeEXT: PFN_vkCmdSetProvokingVertexModeEXT #elsewhere volk;

vkCmdSetLineRasterizationModeEXT: PFN_vkCmdSetLineRasterizationModeEXT #elsewhere volk;
vkCmdSetLineStippleEnableEXT: PFN_vkCmdSetLineStippleEnableEXT #elsewhere volk;

vkCmdSetDepthClipNegativeOneToOneEXT: PFN_vkCmdSetDepthClipNegativeOneToOneEXT #elsewhere volk;

vkCmdSetViewportWScalingEnableNV: PFN_vkCmdSetViewportWScalingEnableNV #elsewhere volk;

vkCmdSetViewportSwizzleNV: PFN_vkCmdSetViewportSwizzleNV #elsewhere volk;

vkCmdSetCoverageToColorEnableNV: PFN_vkCmdSetCoverageToColorEnableNV #elsewhere volk;
vkCmdSetCoverageToColorLocationNV: PFN_vkCmdSetCoverageToColorLocationNV #elsewhere volk;

vkCmdSetCoverageModulationModeNV: PFN_vkCmdSetCoverageModulationModeNV #elsewhere volk;
vkCmdSetCoverageModulationTableEnableNV: PFN_vkCmdSetCoverageModulationTableEnableNV #elsewhere volk;
vkCmdSetCoverageModulationTableNV: PFN_vkCmdSetCoverageModulationTableNV #elsewhere volk;

vkCmdSetShadingRateImageEnableNV: PFN_vkCmdSetShadingRateImageEnableNV #elsewhere volk;

vkCmdSetRepresentativeFragmentTestEnableNV: PFN_vkCmdSetRepresentativeFragmentTestEnableNV #elsewhere volk;

vkCmdSetCoverageReductionModeNV: PFN_vkCmdSetCoverageReductionModeNV #elsewhere volk;

vkGetImageSubresourceLayout2EXT: PFN_vkGetImageSubresourceLayout2EXT #elsewhere volk;

vkCmdSetVertexInputEXT: PFN_vkCmdSetVertexInputEXT #elsewhere volk;

vkCmdPushDescriptorSetWithTemplateKHR: PFN_vkCmdPushDescriptorSetWithTemplateKHR #elsewhere volk;

vkGetDeviceGroupPresentCapabilitiesKHR: PFN_vkGetDeviceGroupPresentCapabilitiesKHR #elsewhere volk;
vkGetDeviceGroupSurfacePresentModesKHR: PFN_vkGetDeviceGroupSurfacePresentModesKHR #elsewhere volk;

vkAcquireNextImage2KHR: PFN_vkAcquireNextImage2KHR #elsewhere volk;

#scope_file


#if OS == .WINDOWS  volk :: #library,no_dll "win/volk";
#if OS == .LINUX    volk :: #library,no_dll "linux/volk";
#if OS == .MACOS    volk :: #library,no_dll "macos/volk";

