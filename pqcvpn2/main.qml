import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow {
    width: 550
    height: 600
    title: qsTr("BoB 11th 양자키순팀 양자내성 VPN")

    visible: true
    color: "#1a1a1b"

    //"#396ff3"
    //https://runebook.dev/ko/docs/qt/qml-qtquick-controls2-applicationwindow#footer-prop
    //https://doc.qt.io/qt-6/qml-qtquick-controls2-applicationwindow.html#footer-prop

    footer: ToolBar{
        id: tool1
        Text {
           text: qsTr('Copyright 2022.Best Of the Best 11th 양자키순팀 All rights reserved.')
           anchors.centerIn: parent

        }
    }
    /*******************************************c++ test button*******************************************/
    /*Button {
        id: test
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("test Button 2")
        onClicked: back.changeValue(2);
        Connections {
            target: back
            onValueChanged: pqcvpn.text = s;
        }
    }


    /*************************************************************************************************/
    Text {
        id: pqcvpn
        y: 10
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
    Text {
        id: text2
        y: 270
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pointSize: 13
        color: "#ffffff"
        text: "김남석(PL) 이현호(PM) 한성윤 이선아 주민서 임성빈
                           윤기순(주) 이경문(부)\n"

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
            source: "images/quantum.png"
            anchors.verticalCenterOffset: -118
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        //진행사항 표시
        BusyIndicator {
            id: busyIndicator
            visible: false
            property color color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 130
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            //running: image.status === switch1.Loading //수정필요 스위치를 키고 나서 VPN 시작까지 걸리는 시간
        }
        //vpn 작동 버튼
        /*Button{
            id: switch1
            y: 159
            width: 250
            height: 190
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            Image {

                anchors.fill: parent
                source: "images/bob_bi_solid.svg"
                //fillMode: Image.Tile
                fillMode: Image.PreserveAspectFit
            }
            checkable: true
            checked: true

        }*/


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
            /*Component.onCompleted:  {
                if (switch1.checked == true){
                    onClicked: back.changeValue(2);
                }else if(switch1.checked == false){
                    onClicked: back.changeValue(1);
                }
            }*/
            // Timer for Creating delay


            onClicked: {
                busyIndicator.visible = true
                text1.text = "VPN is running"
                image.source = 'images/bob_bi_solid.svg'
                image.width = 200
                text2.visible = true

                //back.changeValue(1);

                //back.changeValue(1); switch 클릭시 바뀌지 않음 test.cpp 주석 참고
            }

            //onClicked: back.changeValue(2);
            Connections {
                target: back
                onValueChanged: switch1.checked = s;

            }

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
                image.source = "images/quantum.png" //.qrc 파일에 images폴더 추가해줘야 로딩할 수 있음
                image.width = 120
                text1.text= 'Connect to VPN'
                text1.y = 234
                text1.color= "#d6e2da"

                busyIndicator.visible = true
                switch1.visible = true
            }
        }


        MenuItem{
            text: 'Abuout us'

            onClicked:{
                image.source = "/images/bob_bi_basic.svg" //이러면 Lable에 정의된 값들이 변경됨
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


