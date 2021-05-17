import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14
import QtQuick.VirtualKeyboard 2.14
import QtQuick.VirtualKeyboard.Settings 2.14
import QtQuick.VirtualKeyboard.Styles 2.14

import utils 1.0

ApplicationWindow {
    id: root
    visible: true
    width: Utils.appWidth
    height: Utils.appHeight
    title: qsTr("Qt Virtual Keyboard Custom")
    color: "white"

    Item {
        anchors.fill: parent

        Column {
            id: textEditors
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 100
            spacing: 15
            width: parent.width - 26

            Label {
                color: "#565758"
                text: "Qt Virtual Keyboard - StageTec"
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 22
            }
            TextField {
                width: parent.width
                placeholderText: "One line field"
                onAccepted: passwordField.focus = true
            }
            TextField {
                id: passwordField
                width: parent.width
                echoMode: TextInput.Password
                placeholderText: "Password field"
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onAccepted: upperCaseField.focus = true
            }
            TextField {
                id: upperCaseField
                width: parent.width
                placeholderText: "Upper case field"
                inputMethodHints: Qt.ImhUppercaseOnly
                onAccepted: lowerCaseField.focus = true
            }
            TextField {
                id: lowerCaseField
                width: parent.width
                placeholderText: "Lower case field"
                inputMethodHints: Qt.ImhLowercaseOnly
                onAccepted: phoneNumberField.focus = true
            }
            TextField {
                id: phoneNumberField
                validator: RegExpValidator { regExp: /^[0-9\+\-\#\*\ ]{6,}$/ }
                width: parent.width
                placeholderText: "Phone number field"
                inputMethodHints: Qt.ImhDialableCharactersOnly
                onAccepted: formattedNumberField.focus = true
            }
            TextField {
                id: formattedNumberField
                width: parent.width
                placeholderText: "Formatted number field"
                inputMethodHints: Qt.ImhFormattedNumbersOnly
                onAccepted: digitsField.focus = true
            }
            TextField {
                id: digitsField
                width: parent.width
                placeholderText: "Digits only field"
                inputMethodHints: Qt.ImhDigitsOnly
                onAccepted: textArea.focus = true
            }
            TextArea {
                id: textArea
                width: parent.width
                placeholderText: "Multiple line field"
                height: Math.max(206, implicitHeight)
            }
        }

        InputPanel {
            id: inputPanel
            width: root.width
            visible: Qt.inputMethod.visible
            anchors.bottom: parent.bottom
        }

        KeyboardStyle {
            keyboardBackground: Rectangle {
                color: "white"
            }
        }
    }
}
