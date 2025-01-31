# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/scripting_in_progress"
session_root "~/testing_scripts/"
# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "scripting_in_progress"; then

    # Create a new window inline within session layout definition.
    new_window "ssh_connection"

    new_window "test_here"
    split_h 80
    select_pane 1
    run_cmd "cd -passhere"
    run_cmd "cat < -"

    new_window "terminal"

    # Select the default active window on session creation.
    select_window 2

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
