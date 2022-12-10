

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Window 2.2
import UntitledProject2

Rectangle {
    id: rectangle
    visible: true
    width: 650
    height: 759
    title: qsTr("양자키순 양자내성 VPN")
    color: "#1a1a1a"
    border.color: "#396ff3"
    focus: false
    antialiasing: false
    transformOrigin: Item.Center
    z: 100
    rotation: 0
    state: ""
    scale: 1
    clip: false
    smooth: true

    Text {
        y: 14
        width: 241
        height: 78
        color: "#0c0c0c"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'맑은 고딕'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'HY견명조'; font-size:36pt; font-weight:700; color:#d6e2da;\">PQC VPN</span></p></body></html>"
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 30
        font.styleName: "Bold Italic"
        font.family: "Arial"
        textFormat: Text.RichText
    }

    Switch {
        id: switch1
        y: 534
        width: 150
        height: 90
        visible: true
        icon.source: "images/bob_bi_basic.svg"
        anchors.horizontalCenter: parent.horizontalCenter
        clip: true
        display: AbstractButton.TextBesideIcon
        topInset: 0
        padding: 6
        font.styleName: "Narrow Bold"
        font.weight: Font.Medium
        icon.color: "#423333"
        font.family: "Arial"
        focusPolicy: Qt.StrongFocus
        autoRepeat: false
        autoExclusive: false
        checked: false
    }

    BusyIndicator {
        id: busyIndicator
        property color color: "#1b1cf6"
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 65
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: image
        y: 112
        width: 120
        source: "../../../Desktop/양자.png"
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
    }

    /*    Image {
            id: bob_bi_basic
            x: 278
            y: 48
            width: 267
            height: 237
            source: "../../../Desktop/bob_bi_basic.svg"
            fillMode: Image.PreserveAspectFit
        }*/
    // 메뉴 관련 기능
    Button {
        id: openMenuButton
        text: 'Menu'
    }
    Label {
        id: label
        anchors.centerIn: parent
        text: ''
        font.pointSize: 13
    }

    Menu {
        id: menu
        y: openMenuButton.height

        MenuItem {
            text: 'Abuout us'
        }
    }

    Text {
        id: text1
        x: 296
        y: 743
        text: qsTr("Text")
        font.pixelSize: 12
    }
}
