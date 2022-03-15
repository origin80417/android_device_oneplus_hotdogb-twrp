#!/system/bin/sh
# This script is needed to automatically set device props.

load_op7t()
{
    resetprop "ro.product.model" "OnePlus 7T"
    resetprop "ro.product.name" "OnePlus7T"
    resetprop "ro.build.product" "OnePlus7T"
    resetprop "ro.product.device" "OnePlus7T"
    resetprop "ro.vendor.product.device" "OnePlus7T"
    resetprop "ro.display.series" "OnePlus 7T"
}

project=$(getprop ro.boot.project_name)
echo $project

case $project in
    "18865")
        load_op7t
        ;;
    *)
esac

exit 0
