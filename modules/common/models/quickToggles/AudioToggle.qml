import QtQuick
import qs.services
import qs.modules.common
import qs.modules.common.functions
import qs.modules.common.widgets

QuickToggleModel {
    name: "Saída de áudio"
    statusText: toggled ? "Desmutado" : "Mutado"
    tooltipText: "Saída de áudio | Botão direito para mixer de volume e seletor de dispositivo"
    toggled: !Audio.sink?.audio?.muted
    icon: Audio.sink?.audio?.muted ? "volume_off" : "volume_up"
    mainAction: () => {
        Audio.toggleMute()
    }
    hasMenu: true
}