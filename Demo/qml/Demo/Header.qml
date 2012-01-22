// ------------------------------------------------------------------------
// Swipe/Harmattan's Header Bar with Filter
// Author: @maxart
// URL: https://github.com/maxart/MeeGo-Header
// ------------------------------------------------------------------------
import QtQuick 1.1
import com.nokia.meego 1.0

Rectangle {
  id: theHeader
  property alias title: titleText.text
  property alias titleColor: titleText.color

  width: parent ? parent.width : 0
  height: 72
  // color: "#62b700"
  // color: "#3d890c"
  // color: "#347708"
  // color: "#306600"
  // color: "#09a7cc"
  color: "#007dc9"
  // color: "#0067bc"
  // color: "#1c51af"
  // color: "#4591ff"
  // color: "#6400bc"
  // color: "#870cba"
  // color: "#cc09ba"
  // color: "#e800a1"
  // color: "#ef5500"
  // color: "#ea650a"
  // color: "#f77219"
  // color: "#ff8500"
  // color: "#ed9507"
  // color: "#f2b111"

  Text {
    id: titleText
    x: 16
    anchors.verticalCenter: parent.verticalCenter
    color: "white"
    font.pixelSize: 32
  }

  Rectangle {
    height: 1
    width: parent.width
    anchors.bottom: parent.bottom
    color: "#10000000"
  }

  Rectangle {
    height: 1
    width: parent.width
    anchors.top: parent.bottom
    anchors.topMargin: 1
    color: "white"
  }

  ToolIcon {
    id: filterImage
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    platformIconId: "icon-m-textinput-combobox-arrow"
  }

  MouseArea {
    anchors.fill: theHeader
    onClicked: { headerSelectionDialog.open() }
    onPressed: { theHeader.opacity = 0.8 }
    onReleased: { theHeader.opacity = 1 }
  }

}
