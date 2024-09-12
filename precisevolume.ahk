; fix windows volume going up by 2 instead of 1 %:
$Volume_Up::
SoundGet, volume
SoundSet, volume + 1
SoundGet, newVolume
newVolume := Round(newVolume)
ShowVolumeOSD(newVolume)  ; Show OSD with new volume level
Return

$Volume_Down::
SoundGet, volume
SoundSet, volume - 1
SoundGet, newVolume
newVolume := Round(newVolume)
ShowVolumeOSD(newVolume)  ; Show OSD with new volume level
Return

ShowVolumeOSD(volumeLevel) {
    ToolTip, Volume: %volumeLevel%`%
    SetTimer, RemoveToolTip, -1000  ; Remove after 1 second
}

RemoveToolTip:
ToolTip  ; Clear the tooltip
Return