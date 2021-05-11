pragma Singleton
import QtQuick 2.14

QtObject {
    id: root

    readonly property int appWidth: 1920
    readonly property int appHeight: 1280

    readonly property bool virtualKeyboardVisible: Qt.inputMethod.visible
    function hideKeyboard() {
        if (root.virtualKeyboardVisible) {
            Qt.inputMethod.hide()
        }
    }

}
