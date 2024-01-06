#--- Global Settings ---#
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status time)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0' # 
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2' # 
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#--- OS Segment Settings ---#
POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND='124'
POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND='255'
POWERLEVEL9K_CUSTOM_OS_ICON='echo $MY_OS_ICON'
#--- Context Segment Settings ---#
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='124'
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND='015'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='054'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND='015'
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND='054'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='124'
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND='124'
#--- Directory Segment Settings ---#
POWERLEVEL9K_DIR_BACKGROUND='032'
POWERLEVEL9K_DIR_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='015'
POWERLEVEL9K_ETC_ICON=$'\uf423' # 
POWERLEVEL9K_FOLDER_ICON=$'\uf07b' # 
POWERLEVEL9K_HOME_ICON=$'\uf015' # 
POWERLEVEL9K_HOME_SUB_ICON=$'\uf07c' # 
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#--- Read-Only Segment Settings ---#
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='124'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='015'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_ICON=$'\uf023' # 
POWERLEVEL9K_DIR_WRITABLE_ICON=$'\uf023' # 
#--- 2-Line Prompt Icon Definitions ---#
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{032}\u256D%F{255}\ue0b2" # ╭
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{032}\u2570%F{cyan}\uf460%F{073}\uf460%F{109}\uf460%f " # ╰
#--- Status Segment Settings ---#
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="250"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="008"
POWERLEVEL9K_STATUS_FOREGROUND='016'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='244'
POWERLEVEL9K_STATUS_OK_BACKGROUND='244'
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_TIME_FOREGROUND='015'
POWERLEVEL9K_TIME_BACKGROUND='236'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf017  %m/%d/%y \uf073 }" #  
POWERLEVEL9K_TIME_ICON=''
#--- Version Control System (VCS) Segment Settings ---#
POWERLEVEL9K_VCS_CHANGESET_HASH_LENGTH=8
POWERLEVEL9K_VCS_SHOW_CHANGESET=true
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY=true
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='220'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='028'
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND='124'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='220'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\uf06a ' # 
POWERLEVEL9K_VCS_UNSTAGED_ICON='\uf06a ' # 
POWERLEVEL9K_VCS_STAGED_ICON='\uf055' # 
POWERLEVEL9K_VCS_STASH_ICON='\uf01c ' # 
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\uf01a ' # 
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uf01b ' # 
POWERLEVEL9K_VCS_TAG_ICON='\uf02b ' # 
POWERLEVEL9K_VCS_BOOKMARK_ICON='\uf5bf' # 
POWERLEVEL9K_VCS_COMMIT_ICON='\uf417 ' # 
POWERLEVEL9K_VCS_CLOBBERED_FOLDER_ICON='\uf115' # 
POWERLEVEL9K_VCS_BRANCH_ICON='\uf418 ' # 
POWERLEVEL9K_VCS_REMOTE_BRANCH_ICON='\uf554' # 
POWERLEVEL9K_VCS_GIT_ICON='\uf1d3 ' # 
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uf113 ' # 
POWERLEVEL9K_VCS_GIT_GITLAB_ICON='\uf296 ' # % 