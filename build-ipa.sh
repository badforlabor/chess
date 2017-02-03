

## replace file
## root_dir=`pwd`
## cp -f root_dir/replace/UnityAppController.h root_dir/../WEL/Classes/

	
xcode="/Applications/Xcode72.app/Contents/Developer/usr/bin"
xcode_bin=${xcode}/xcodebuild
xcrun_bin=${xcode}/xcrun
build_dir="/Users/lingyoukeji/liubo/chess/iOS"
APP_NAME=HOXChess
DLLPROVINSING="26304a1f-4b54-49f4-b1f1-54e4dcd390b7"
DLLCODESIGN="iPhone Distribution: FengGuo Sun (EY646JXS5B)"
DLLFINALNAME=HOXChess
build_deploy_folder=${build_dir}/release/
DLLMAINVERSION=1
DLLPROFILERSUFFIX=HOXChess

## build
${xcode_bin} -project "${build_dir}/HOXChess.xcodeproj/" -target "HOXChess" CONFIGURATION_BUILD_DIR="${build_dir}/IOS/" PROVISIONING_PROFILE=${DLLPROVINSING} CODE_SIGN_IDENTITY="${DLLCODESIGN}" GCC_GENERATE_DEBUGGING_SYMBOLS=NO DEBUG_INFORMATION_FORMAT=dwarf DEBUGGING_SYMBOLS=NO


# ipa

${xcrun_bin} -sdk iphoneos PackageApplication -v "${build_dir}/IOS/${DLLFINALNAME}.app" -o "${build_dir}/IOS/${DLLFINALNAME}.ipa"

	