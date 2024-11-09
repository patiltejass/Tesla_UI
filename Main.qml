import QtQuick
// import QtLocation
Window {
    width: 900
    height: 500
    visible: true
    title: qsTr("Tesla Model X")
    color: "white"
    Rectangle{
        id: main
        border.color: "grey";
        border.width: 10;
        height: parent.height;
        width: parent.width;
        Rectangle {
            id: image1
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.margins: 10
            width: 350
            color: "beige"
            Image {
                id: modelx
                source: "file:///C:/Users/Tejas Patil/Downloads/tesla-model-3-in-midnight-silver-metallic-removebg-preview.png"
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                width: parent.width - 20
                height: (width / 16) * 9
            }
            Rectangle{
                id: mediaPlayer
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                height: 80
                width: 300
                anchors.margins: 10
                radius: 5
                color: "white"
                Rectangle{
                    id: divider
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 40
                    height: 1
                    width: parent.width
                    color: "black"
                }
                Image {
                    id: thumbnail
                    source: "file:///C:/Users/Tejas Patil/Downloads/cropped-maxresdefault.jpg"
                    anchors.top: parent.top
                    height: 40
                    width: 50
                    fillMode: Image.Stretch
                }
                Text {
                    id: song_title
                    text: qsTr("Khwab | Iqlipse Nova" )
                    anchors.left: thumbnail.right
                    anchors.leftMargin: 20
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    color: "Black"
                    font.bold: true;
                    height: 15
                    width: 100
                    font.pixelSize: 15
                }
                Image {
                    id: previous
                    source: "file:///C:/Users/Tejas Patil/Downloads/previous.png"
                    anchors.top: divider.top
                    anchors.topMargin: 13
                    anchors.left: mediaPlayer.left
                    anchors.leftMargin: 20
                    height: 15
                    width: 15
                }
                Image {
                    id: play
                    source: "file:///C:/Users/Tejas Patil/Downloads/icons8-play-30.png"
                    anchors.top: divider.top
                    anchors.topMargin: 13
                    anchors.left: previous.left
                    anchors.leftMargin: 58
                    height: 15
                    width: 15
                }
                Image {
                    id: nextbtn
                    source: "file:///C:/Users/Tejas Patil/Downloads/next-button.png"
                    anchors.top: divider.top
                    anchors.topMargin: 13
                    anchors.left: play.left
                    anchors.leftMargin: 58
                    height: 15
                    width: 15
                }
                Image {
                    id: setting
                    source: "file:///C:/Users/Tejas Patil/Downloads/control.png"
                    anchors.top: divider.top
                    anchors.topMargin: 13
                    anchors.left: nextbtn.left
                    anchors.leftMargin: 58
                    height: 15
                    width: 15
                }
                Image {
                    id: search
                    source: "file:///C:/Users/Tejas Patil/Downloads/magnifying-glass.png"
                    anchors.top: divider.top
                    anchors.topMargin: 13
                    anchors.left: setting.left
                    anchors.leftMargin: 58
                    height: 15
                    width: 15
                }
            }
        }
        Rectangle {
            id: mapp
            anchors.top: parent.top
            anchors.left: image1.right
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 10
            anchors.leftMargin: 0
            color: "beige"
            Image {
                id: pune
                source: "file:///C:/Users/Tejas Patil/Downloads/cropped-map.png"
                anchors.fill: parent
                fillMode: Image.Stretch
            }
        }
        Rectangle {
            id: notificationPanel
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 10
            height: 20
            color: "#80000000"
            z: 1
            Image {
                id: battery
                source: "file:///C:/Users/Tejas Patil/Downloads/icons8-battery-30.png"
                fillMode: Image.Stretch
                x:285
                height:23
                width: 23
            }
            Text {
                id: batteryper
                text: qsTr("60 %")
                x:313
                y:2
                font.bold: true
            }
            Image {
                id: profile
                source: "file:///C:/Users/Tejas Patil/Downloads/output-onlinepngtools.png"
                fillMode: Image.Stretch
                x:360
                y:1
                height:17
                width: 17
            }
            Text {
                id: username
                text: qsTr("Tejas")
                x:385
                y:1
                font.bold: true
                color: "white"
            }
            Image {
                id: wifi
                source: "file:///C:/Users/Tejas Patil/Downloads/output-onlinepngtools (1).png"
                fillMode: Image.Stretch
                x:430
                y:2
                height:15
                width: 15
            }
            Text {
                id: temprature
                text: qsTr("27 C")
                x:465
                y:1
                font.bold: true
                color: "white"
            }
        }
    }
}
