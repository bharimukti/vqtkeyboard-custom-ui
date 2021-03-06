/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Virtual Keyboard module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.Layouts 1.0

import QtQuick.VirtualKeyboard 2.15

KeyboardLayout {
    id: root
    inputMode: InputEngine.InputMode.Latin
    keyWeight: 160
    Layout.fillWidth: false

    property bool functionKeysEnabled: false
    property bool keyboardIsLocked: false

    KeyboardRow {
        Key {
            key: Qt.Key_Escape
            displayText: "ESC"
        }
        Key {
            key: Qt.Key_F1
            displayText: root.functionKeysEnabled ? "^\n°" : "F1"
            text: root.functionKeysEnabled ? "^\n°" : ""
        }
        Key {
            key: Qt.Key_F2
            displayText: root.functionKeysEnabled ? "!" : "F2"
            text: root.functionKeysEnabled ? "!" : ""
        }
        Key {
            key: Qt.Key_F3
            displayText: root.functionKeysEnabled ? "”" : "F3"
            text: root.functionKeysEnabled ? "”" : ""
        }
        Key {
            key: Qt.Key_F4
            displayText: root.functionKeysEnabled ? "§" : "F4"
            text: root.functionKeysEnabled ? "§" : ""
        }
        Key {
            key: Qt.Key_F5
            displayText: root.functionKeysEnabled ? "$" : "F5"
            text: root.functionKeysEnabled ? "$" : ""
        }
        Key {
            key: Qt.Key_F6
            displayText: root.functionKeysEnabled ? "%" : "F6"
            text: root.functionKeysEnabled ? "%" : ""
        }
        Key {
            key: Qt.Key_F7
            displayText: root.functionKeysEnabled ? "&" : "F7"
            text: root.functionKeysEnabled ? "&" : ""
        }
        Key {
            key: Qt.Key_F8
            displayText: root.functionKeysEnabled ? "/" : "F8"
            text: root.functionKeysEnabled ? "/" : ""
        }
        Key {
            key: Qt.Key_F9
            displayText: root.functionKeysEnabled ? "(" : "F9"
            text: root.functionKeysEnabled ? "(" : ""
        }
        Key {
            key: Qt.Key_F10
            displayText: root.functionKeysEnabled ? ")" : "F10"
            text: root.functionKeysEnabled ? ")" : ""
        }
        Key {
            key: Qt.Key_F11
            displayText: root.functionKeysEnabled ? "=" : "F11"
            text: root.functionKeysEnabled ? "=" : ""
        }
        Key {
            key: Qt.Key_F12
            displayText: root.functionKeysEnabled ? "?" : "F12"
            text: root.functionKeysEnabled ? "?" : ""
        }
        FillerKey {
            weight: 970
        }
        Key {
            weight: 300
            displayText: "Show \nFunction Keys"
            onClicked: root.functionKeysEnabled = !root.functionKeysEnabled
        }
    }

    KeyboardRow {
        Key {
            key: Qt.Key_Tab
            displayText: "TAB"
        }
        Key {
            key: Qt.Key_Q
            text: "q"
        }
        Key {
            key: Qt.Key_W
            text: "w"
        }
        Key {
            key: Qt.Key_E
            text: "e"
            alternativeKeys: "êeëèé"
        }
        Key {
            key: Qt.Key_R
            text: "r"
            alternativeKeys: "ŕrř"
        }
        Key {
            key: Qt.Key_T
            text: "t"
            alternativeKeys: "ţtŧť"
        }
        Key {
            key: Qt.Key_Y
            text: "y"
            alternativeKeys: "ÿyýŷ"
        }
        Key {
            key: Qt.Key_U
            text: "u"
            alternativeKeys: "űūũûüuùú"
        }
        Key {
            key: Qt.Key_I
            text: "i"
            alternativeKeys: "îïīĩiìí"
        }
        Key {
            key: Qt.Key_O
            text: "o"
            alternativeKeys: "œøõôöòóo"
        }
        Key {
            key: Qt.Key_P
            text: "p"
        }
        Key {
            key: Qt.Key_Plus
            text: "* \n+"
        }
        BackspaceKey {}
        Key {
            key: Qt.Key_Delete
            displayText: "DELETE"
        }
        // TODO
        Key {
            weight: 120
            key: Qt.Key_0
            text: "POS 1"
        }
        Key {
            weight: 120
            key: Qt.Key_PageUp
            displayText: "PAGE \nUP"
        }
        Key {
            weight: 120
            key: Qt.Key_End
            displayText: "END"
        }
        Key {
            weight: 120
            key: Qt.Key_7
            text: "7"
        }
        Key {
            weight: 120
            key: Qt.Key_8
            text: "8"
        }
        Key {
            weight: 120
            key: Qt.Key_9
            text: "9"
        }
    }

    KeyboardRow {
        ShiftKey {
            weight: 220
            displayText: "CAPS \nLOCK"
//            MouseArea {
//                anchors.fill: parent
//                onClicked: InputContext.capsLockActive = !InputContext.capsLockActive
//            }
        }
        FillerKey {
            weight: 20
        }
        Key {
            key: Qt.Key_A
            text: "a"
            alternativeKeys: "aäåãâàá"
        }
        Key {
            key: Qt.Key_S
            text: "s"
            alternativeKeys: "šsşś"
        }
        Key {
            key: Qt.Key_D
            text: "d"
            alternativeKeys: "dđď"
        }
        Key {
            key: Qt.Key_F
            text: "f"
        }
        Key {
            key: Qt.Key_G
            text: "g"
            alternativeKeys: "ġgģĝğ"
        }
        Key {
            key: Qt.Key_H
            text: "h"
        }
        Key {
            key: Qt.Key_J
            text: "j"
        }
        Key {
            key: Qt.Key_K
            text: "k"
        }
        Key {
            key: Qt.Key_L
            text: "l"
            alternativeKeys: "ĺŀłļľl"
        }

        //TODO
        Key {
            key: Qt.Key_0
            text: "#"
        }
        EnterKey {
            weight: 270
        }
        FillerKey {
            weight: 114
        }
        Key {
            weight: 115
            key: Qt.Key_PageDown
            text: "PAGE\nDOWN"
        }
        FillerKey {
            weight: 110
        }
        Key {
            weight: 113
            key: Qt.Key_4
            text: "4"
        }
        Key {
            weight: 113
            key: Qt.Key_5
            text: "5"
        }
        Key {
            weight: 113
            key: Qt.Key_6
            text: "6"
        }
    }

    KeyboardRow {
        keyWeight: 156
        ShiftKey {
            weight: 220
            displayText: "SHIFT"
        }
        Key {
            text: ">\n<"
        }
        Key {
            key: Qt.Key_Z
            text: "z"
            alternativeKeys: "zžż"
        }
        Key {
            key: Qt.Key_X
            text: "x"
        }
        Key {
            key: Qt.Key_C
            text: "c"
            alternativeKeys: "çcċčć"
        }
        Key {
            key: Qt.Key_V
            text: "v"
        }
        Key {
            key: Qt.Key_B
            text: "b"
        }
        Key {
            key: Qt.Key_N
            text: "n"
            alternativeKeys: "ņńnň"
        }
        Key {
            key: Qt.Key_M
            text: "m"
        }
        Key {
            key: Qt.Key_Comma
            text: "; \n,"
        }
        Key {
            key: Qt.Key_Period
            text: ": \n."
        }
        Key {
            key: Qt.Key_Minus
            text: "_ \n-"
        }
        ShiftKey {
            weight: 220
            displayText: "SHIFT"
        }
        FillerKey {
            weight: 470
        }
        Key {
            weight: 135
            key: Qt.Key_Up
            displayText: "UP"
        }
        FillerKey {
            weight: 125
        }
        Key {
            weight: 133
            key: Qt.Key_1
            text: "1"
        }
        Key {
            weight: 133
            key: Qt.Key_2
            text: "2"
        }
        Key {
            weight: 133
            key: Qt.Key_3
            text: "3"
        }
    }

    KeyboardRow {
        keyWeight: 154
        Key {
            weight: 150
            key: Qt.Key_Control
            displayText: "CTRL"
        }
        //TODO
        Key {
            weight: 150
            key: Qt.Key_0
            displayText: "WIN"
        }
        Key {
            weight: 150
            key: Qt.Key_Alt
            displayText: "ALT"
        }
//        SymbolModeKey {
//            weight: 217
//        }
//        ChangeLanguageKey {
//            weight: 154
//        }

        SpaceKey {
            weight: 825
        }
        Key {
            weight: 150
            key: Qt.Key_AltGr
            displayText: "ALT-GR"
        }
        Key {
            weight: 150
            key: Qt.Key_Control
            displayText: "CTRL"
        }
        HideKeyboardKey {
            id: hidekeyboardPanel
            weight: 220
            state: !root.keyboardIsLocked ? "unlocked" : "locked"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (!root.keyboardIsLocked) {
                        Qt.inputMethod.hide()
                    }
                }
                onPressAndHold: root.keyboardIsLocked = !root.keyboardIsLocked
            }
        }
        Key {
            weight: 95
            key: Qt.Key_Left
            displayText: "BACK"
        }
        Key {
            weight: 95
            key: Qt.Key_Down
            displayText: "DOWN"
        }
        Key {
            weight: 95
            key: Qt.Key_Right
            displayText: "FWD"
        }
        FillerKey {
            weight: 90
        }
        Key {
            weight: 95
            key: Qt.Key_0
            text: "0"
        }
        FillerKey {
            weight: 90
        }
    }
}
