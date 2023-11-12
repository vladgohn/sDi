@echo off
setlocal

set PYTHON=
set GIT=
set COMMANDLINE_ARGS= --autolaunch --theme=dark --opt-sdp-no-mem-attention --opt-channelslast 
call display_info.bat
git pull
call webui.bat

endlocal