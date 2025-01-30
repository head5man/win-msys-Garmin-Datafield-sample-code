RDIR="$(dirname "${0}")"
MY_KEY="$(realpath ${RDIR}/../../key/developer_key)"
export DEVELOPER_KEY=$MY_KEY

case "$OSTYPE" in
  msys*)
    ;&
  cygwin*)
    export JAVA_HOME="/d/Runtimes/Java/jre1.8.0_441"
    export SED_INPLACE="sed -i"
    export CONVERT="/c/Program Files/ImageMagick-7.1.1-Q16-HDRI/magick.exe"
    export GARMIN_SDK_BASE_PATH="${HOME}/AppData/Roaming"
    ;;
  *)
    export JAVA_HOME=$(/usr/libexec/java_home -v1.8)
    export SED_INPLACE="sed -i ''"
    export CONVERT="convert"
    export GARMIN_SDK_BASE_PATH="${HOME}/Library/Application Support/"
    ;;
esac

if [ ! -e $DEVELOPER_KEY ]; then
  echo !! DEVELOPER_KEY=$DEVELOPER_KEY file not found !!
else
  echo DEVELOPER_KEY=$DEVELOPER_KEY
fi

echo JAVA_HOME=$JAVA_HOME
echo SED_INPLACE=$SED_INPLACE
echo CONVERT=$CONVERT
echo GARMIN_SDK_BASE_PATH=$GARMIN_SDK_BASE_PATH
