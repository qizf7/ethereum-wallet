#!/bin/bash
# echo "Creating project without FaceDetector"
# if [ -e node_modules/react-native-camera/ios/FaceDetector ] ; then
#   rm -rf node_modules/react-native-camera/ios/FaceDetector
# fi
# cp node_modules/react-native-camera/postinstall_project/projectWithoutFaceDetection.pbxproj node_modules/react-native-camera/ios/RNCamera.xcodeproj/project.pbxproj

#!/bin/bash
set -e

# Make RNCamera search paths non-recursive for ios to avoid recursion overflow in build
sed -i -e 's/ios\/\*\*/ios\/\*/g' ./node_modules/react-native-camera/ios/RNCamera.xcodeproj/project.pbxproj