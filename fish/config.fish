if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --export ANDROID_HOME $HOME/.development/android-sdk;
set -gx PATH $ANDROID_HOME/cmdline-tools/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;

