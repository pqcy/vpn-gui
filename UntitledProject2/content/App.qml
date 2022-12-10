/****************************************************************************
**
** Copyright (C) 2021 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Studio Components.
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

import QtQuick 6.2
import QtQuick.Window 6.2
import QtQuick.Controls 6.2
import UntitledProject2

Window {
    id: window
    width: 550
    height: 600
    title: qsTr("양자키순 양자내성 VPN")

    visible: true
    color: "#1a1a1a"
    //"#396ff3"
    //https://runebook.dev/ko/docs/qt/qml-qtquick-controls2-applicationwindow#footer-prop
    //https://doc.qt.io/qt-6/qml-qtquick-controls2-applicationwindow.html#footer-prop

    /*footer: ToolBar{
        id: tool1
        text: 'Copyright2022.BestOftheBest11thPQCY All rights reserved.'
    }*/

    Text {
        id: pqcvpn
        y: 35
        width: 319
        height: 80
        color: "#0c0c0c"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'맑은 고딕'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'HY견명조'; font-size:36pt; font-weight:700; color:#d6e2da;\">PQC VPN</span></p></body></html>"
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 30
        font.styleName: "Bold Italic"
        font.family: "Arial"
        textFormat: Text.RichText

    }



    //홈 화면 interface 기본 default 값
    Label {
        id: label
        visible: true
        anchors.centerIn:  parent

        Text {
            id: text1
            y: 234
            width: 363
            height: 77
            text: 'Connect to VPN'
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 14
            color: "#d6e2da"
        }
        Image {
            id: image
            width: 120
            anchors.verticalCenter: parent.verticalCenter
            source: "images/양자.png"
            anchors.verticalCenterOffset: -118
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        //진행사항 표시
        BusyIndicator {
            id: busyIndicator
            visible: true
            property color color: "#1b1cf6"
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 136
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            running: image.status === switch1.Loading //수정필요 스위치를 키고 나서 VPN 시작까지 걸리는 시간
        }
        //vpn 작동 스위치
        Switch {
            id: switch1
            y: 159
            width: 150
            height: 90
            visible: true
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

    }
    //메뉴 버튼
    Button {
        id: openMenuButton
        x: 0
        y: 0
        width: 79
        height: 34
        text: 'Menu'

        onClicked: {
            menu.open();
        }


    }

    Menu {
        id: menu
        y: openMenuButton.height


        MenuItem{
            text: 'Home'

            onClicked:{
                image.source = "images/양자.png" //상대경로 수정필요
                image.width = 120
                text1.text= 'Connect to VPN'
                text1.y = 234
                text1.color= "#d6e2da"

                busyIndicator.visible = true
                switch1.visible = true
            }
        }
        MenuItem{
            text: '공인 IP'
            onClicked:{
                //공인IP 알려주는? ip.gilgil.net
            }
        }

        MenuItem{
            text: 'Abuout us'

            onClicked:{
                image.source = "images/bob_bi_basic.svg" //이러면 Lable에 정의된 값들이 변경됨
                image.x = 278
                image.width= 267
                image.height = 237
                image.fillMode= Image.PreserveAspectFit
                text1.text = "KITRI Best of the Best 11th\n양자키순"
                text1.color = "#d6e2da"
                text1.y = 90
                busyIndicator.visible = false //이 특성 안보이게
                switch1.visible = false

            }
        }
    }
}

