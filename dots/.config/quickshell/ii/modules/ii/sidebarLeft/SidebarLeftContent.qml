import qs.services
import qs.modules.common
import qs.modules.common.widgets
import qs.modules.ii.mediaControls
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Item {
    id: root
    required property var scopeRoot
    property int sidebarPadding: 10
    anchors.fill: parent

    StyledFlickable {
        id: sidebarScrollView
        anchors.fill: parent
        contentWidth: width
        contentHeight: sidebarColumn.implicitHeight + root.sidebarPadding * 2

        Column {
            id: sidebarColumn
            width: sidebarScrollView.width - root.sidebarPadding * 2
            x: root.sidebarPadding
            y: root.sidebarPadding
            spacing: root.sidebarPadding

            Loader {
                id: mediaLoader
                width: sidebarColumn.width
                active: MprisController.activePlayer != null
                sourceComponent: PlayerControl {
                    implicitWidth: mediaLoader.width
                    implicitHeight: Appearance.sizes.mediaControlsHeight
                    radius: Appearance.rounding.normal
                    player: MprisController.activePlayer
                }
            }

            Item {
                width: sidebarColumn.width
                height: root.sidebarPadding
            }
        }
    }

    component CardFrame: Item {
        id: cardFrame
        default property alias cardContent: contentColumn.data
        implicitWidth: 360
        implicitHeight: contentColumn.implicitHeight + 24

        Rectangle {
            anchors.fill: parent
            color: Appearance.colors.colLayer1
            radius: Appearance.rounding.normal
            border.width: 1
            border.color: Appearance.colors.colLayer0Border
        }

        ColumnLayout {
            id: contentColumn
            anchors {
                fill: parent
                margins: 12
            }
            spacing: 10
        }
    }
}