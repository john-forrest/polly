@echo off
if %1==Debug (
@echo on
echo "===================================== OOPS ========================================"
echo "this is just a friendly reminder from us."
echo "you are trying to build Debug configuration. We don't support that unfortunately."
echo "why don't you try building in the Release mode?"
echo "==================================================================================="
@echo off
EXIT 1
)