# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "$HOME/storage/music/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "sync"; then

    # Create a new window inline within session layout definition.
    new_window "music"
    split_h 50
    select_pane 1
    split_v 50
    select_pane 3
    split_v 50

    select_pane 1
    run_cmd "cd $HOME/storage/music/Haven/"
    run_cmd "yt-dlp -w -c --embed-thumbnail --no-abort-on-error -x --audio-format best 'https://youtube.com/playlist?list=PLBBcaljFGSiSz8czPRv3tX3C4nKo4On4j&si=YCIbnJX6xgvrvmlV'"
    select_pane 2
    run_cmd "cd $HOME/storage/music/Eternal-Haven/"
    run_cmd "yt-dlp -w -c --embed-thumbnail --no-abort-on-error -x --audio-format best 'https://youtube.com/playlist?list=PLBBcaljFGSiSZ5enBdlyxcqu0RZtpuuoq&si=xHGIPd-Uw-7DeBZE'"
    select_pane 3
    run_cmd "cd $HOME/storage/music/Instrumental-Haven/"
    run_cmd "yt-dlp -w -c --embed-thumbnail --no-abort-on-error -x --audio-format best 'https://youtube.com/playlist?list=PLBBcaljFGSiQb-vXx89JDd9QXoa_iQjGA&si=yIH54ZTJQtO4vzsF'"
    select_pane 4
    run_cmd "cd $HOME/storage/music/Eternal-Instruemental-Haven/"
    run_cmd "yt-dlp -w -c --e

    # Load a defined window layout.
    #load_window "example"

    # Select the default active window on session creation.
    select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
