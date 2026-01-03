import QtQuick
import Quickshell

import qs.modules.ii
import qs.modules.ii.bar
import qs.modules.ii.background
import qs.modules.ii.wallpaperSelector
import qs.modules.ii.sidebarLeft
import qs.modules.ii.mediaControls
import qs.modules.ii.onScreenDisplay
import qs.modules.common

Scope {
    PanelLoader { extraCondition: !Config.options.bar.vertical; component: Bar {} }
    PanelLoader { component: Background {} }
    PanelLoader { component: MediaControls {} }
    PanelLoader { component: NotificationPopup {} }
    PanelLoader { component: OnScreenDisplay {} }
    PanelLoader { component: SidebarLeft {} }
    PanelLoader { component: WallpaperSelector {} }
}
