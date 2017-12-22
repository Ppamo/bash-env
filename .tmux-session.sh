#!/bin/bash
SESSIONNAME="BASE"

create_window_layout(){
	tmux split-window -h
	tmux select-pane -t 1
	tmux split-pane -v
	tmux select-pane -t 0
	tmux resize-pane -R 30
}

create_session(){
	tmux new-session -d -s "$SESSIONNAME"

	# repo-controller
	tmux rename-window -t "$SESSIONNAME:0" "REPO-CONTROLLER"
	create_window_layout

	# microservicios
	tmux new-window -t "$SESSIONNAME" -a -n "MICROSERVICIOS"
	create_window_layout

	# kubernetes
	tmux new-window -t "$SESSIONNAME" -a -n "KUBERNETES"
	create_window_layout
}

SESSIONNAMES=$(tmux list-sessions 2>/dev/null | grep "$SESSIONNAME" | wc -l)
if [ $SESSIONNAMES -eq 0 ]
then
	create_session
	tmux attach -t "$SESSIONNAME"
else
	if [ -z "$TMUX" ]
	then
		SESSIONNAMES=$(tmux list-sessions 2>/dev/null | grep "$SESSIONNAME" | grep "(attached)" | wc -l)
		if [ $SESSIONNAMES -eq 0 ]
		then
			tmux attach -t $SESSIONNAME
		fi
	fi
fi
