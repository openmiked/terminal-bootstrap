    #--- PowerLevel9K: Segment Function Bindings ---#
POWERLEVEL9K_CUSTOM_DEVICE_STATS="getCustomPromptSegment"

    #--- Icons for Functions Definitions ---#
CUSTOM_PROMPT_AVG_LOAD_ICON=$'\uf080' # 
CUSTOM_PROMPT_MEMORY_UTIL_ICON=$'\ue266' # 
CUSTOM_PROMPT_WIFI_UTIL_CONNECTED_ICON=$'\ufaa8' # 直
CUSTOM_PROMPT_WIFI_UTIL_NOT_CONNECTED_ICON=$'\ufaa9' # 睊

    #--- Common Helpers ---#
function getCustomPromptSegment()
{
    echo ""
}

function ip() # Get IP adress
{
    MY_IP=$(/sbin/ifconfig $MY_NI | awk '/inet/ { print $2 } ' |
      sed -e s/addr://)
    echo ${MY_IP:-"Not connected"}
}

function getAverageLoad() # Get average load for the system over the last 5 minutes
{
    local textColor="%F{$POWERLEVEL9K_CUSTOM_AVG_LOAD_FOREGROUND}"
    local iconColor='%F{green}'
    local display=''
    
    if [[ $CONFIG_ENV == "windows-linux" ]]; then
        local avgLoadPercentage=$(cat /proc/loadavg | awk -F' ' '{print $2}')        

        if [[ $avgLoadPercentage -ge 0.6 ]]; then
            if [[ $avgLoadPercentage -gt 0.75 ]]; then
                iconColor='%F{red}'
            else
                iconColor='%F{yellow}'
            fi
        fi

        display=$(printf "%0.1f%%\n" $((avgLoadPercentage*100)))
    else
        local avgLoadPercentage="$((100 - $(top -l 1 | grep -E "^CPU" | awk -F'%' '{print $3}' | awk -F', ' '{print $2}')))"

        if [[ $avgLoadPercentage -ge 60 ]]; then
            if [[ $avgLoadPercentage -gt 75 ]]; then
                iconColor='%F{red}'
            else
                iconColor='%F{yellow}'
            fi
        fi

        display=$(printf "%0.1f%%\n" $((avgLoadPercentage)))
    fi

    echo -n "%{$textColor%}$display% %{$iconColor%}$CUSTOM_PROMPT_AVG_LOAD_ICON %{%f%}"
}

function getMemoryUtilizationPercentage() # Get memory utilization percentage for a Linux system
{
    if [[ $CONFIG_ENV == "windows-linux" ]]; then

        local textColor="%F{$POWERLEVEL9K_CUSTOM_MEMORY_UTIL_FOREGROUND}"
        local iconColor='%F{green}'

        local ramTotal=$(cat /proc/meminfo | grep 'MemTotal:' | awk -F': ' '{print $2}' | awk -F' ' '{print $1}')
        local ramFree=$(cat /proc/meminfo | grep 'MemFree:' | awk -F': ' '{print $2}' | awk -F' ' '{print $1}')
        local ramUsed=$((ramTotal - ramFree))
        local percentageUsed=$(echo "scale=3 ; $ramUsed / $ramTotal" | bc)

        if [[ $percentageUsed -ge 0.7 ]]; then
            if [[ $percentageUsed -ge 0.9 ]]; then
                iconColor='%F{red}'
            else
                iconColor='%F{yellow}'
            fi
        fi

        local display=$(printf "%0.1f%%\n" $((percentageUsed*100)))

        echo -n "%{$textColor%}$display% %{$iconColor%}$CUSTOM_PROMPT_MEMORY_UTIL_ICON %{%f%}"

    fi    
}

function getWifiSignal() # Get WiFi signal strength
{
    if [[ $CONFIG_ENV == "mac-os" ]]; then

        local airportInfo=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airportStatus=$(echo $airportInfo | grep 'AirPort' | awk -F': ' '{print $2}')
        local wifiIcon=$CUSTOM_PROMPT_WIFI_UTIL_NOT_CONNECTED_ICON
        local textColor="%F{$POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND}"
        local iconColor='%F{black}'
        local display=' '

        if [ "$airportStatus" = "Off" ]; then
            display="Wifi Off "
        else
            local speed=$(echo $airportInfo | grep 'lastTxRate' | awk -F': ' '{print $2}')

            if [[ $speed -gt 0 ]]; then
                iconColor='%F{green}'
                wifiIcon=$CUSTOM_PROMPT_WIFI_UTIL_CONNECTED_ICON
                [[ $speed -lt 50 ]] && iconColor='%F{yellow}'
            else
                iconColor='%F{red}'
                display='No Connection '
            fi
        fi

        echo -n "%{$textColor%}$display%{$iconColor%}$wifiIcon%{%f%}"
    fi
}