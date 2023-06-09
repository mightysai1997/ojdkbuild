@echo off
rem Copyright 2016, akashche at redhat.com
rem
rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

@echo on

rem shortcuts from script directory
set BAD_SLASH_SCRIPT_DIR=%~dp0
set SCRIPT_DIR=%BAD_SLASH_SCRIPT_DIR:\=/%
set OJDKBUILD_DIR=%SCRIPT_DIR%/../..

rem tools dirs
set VSINSTALLDIR=%OJDKBUILD_DIR%/tools/toolchain/vs2017bt_15936
set WindowsSdkDir=%OJDKBUILD_DIR%/tools/toolchain/sdk10_17763

rem set compiler environment manually
set DevEnvDir=%VSINSTALLDIR%/Common7/IDE/
set ExtensionSdkDir=%WindowsSdkDir%/ExtensionSDKs
set INCLUDE=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/include;%WindowsSdkDir%/include/10.0.17763.0/ucrt;
set INCLUDE=%INCLUDE%;%WindowsSdkDir%/include/10.0.17763.0/shared;%WindowsSdkDir%/include/10.0.17763.0/um;%WindowsSdkDir%/include/10.0.17763.0/winrt;
set LIB=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x86;%WindowsSdkDir%/lib/10.0.17763.0/ucrt/x86;%WindowsSdkDir%/lib/10.0.17763.0/um/x86;
set LIBPATH=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x86;%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x86/store/references;
set LIBPATH=%LIBPATH%;%WindowsSdkDir%/UnionMetadata;%WindowsSdkDir%/References;
set Platform=x86
set PROCESSOR_ARCHITECTURE=AMD64
set VCIDEInstallDir=%VSINSTALLDIR%/Common7/IDE/VC/
set VCINSTALLDIR=%VSINSTALLDIR%/VC/
set VCToolsInstallDir=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/
set VCToolsRedistDir=%VSINSTALLDIR%/VC/Redist/MSVC/14.16.27012/
set VCToolsVersion=14.16.27023
set VisualStudioVersion=15.0
set VS150COMNTOOLS=%VSINSTALLDIR%/Common7/Tools/
set VSCMD_ARG_app_plat=Desktop
set VSCMD_ARG_HOST_ARCH=x86
set VSCMD_ARG_TGT_ARCH=x86
set VSCMD_VER=15.0
set WindowsSdkBinPath=%WindowsSdkDir%/bin/
set WindowsSdkVerBinPath=%WindowsSdkDir%/bin/10.0.17763.0/
set WindowsSDKLibVersion=10.0.17763.0/
set WindowsSDKVersion=10.0.17763.0/

rem additional tools
set WINLD=
set MT=
set RC=
set WINAR=
set DUMPBIN=
set VS_LIB=
set VS_INCLUDE=

rem set path
set PATH=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/bin/HostX86/x86
set PATH=%PATH%;%WindowsSdkDir%/bin/10.0.17763.0/x86;%VSINSTALLDIR%/Common7/Tools/;%VSINSTALLDIR%/VC/Redist/MSVC/14.16.27012/x86/Microsoft.VC141.CRT/
set PATH=%PATH%;%WindowsSdkDir%/Redist/10.0.17763.0/ucrt/DLLs/x86
set PATH=%PATH%;C:/Windows/system32;C:/Windows;C:/Windows/System32/Wbem

rem ojfx env
set DXSDK_DIR=%OJDKBUILD_DIR%/tools/toolchain/directx-june2010
set BASECLASSES_SDK_DIR=%OJDKBUILD_DIR%/tools/toolchain/sdk71
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/cmake320/bin
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/ant182/bin
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/cygwin64/bin
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/perl520/perl/bin
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/ruby/bin
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/python27
set PATH=%PATH%;%OJDKBUILD_DIR%/tools/gperf/bin