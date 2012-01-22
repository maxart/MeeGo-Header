import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
  id: appWindow
  initialPage: mainPage


  // ------------------------------------------------------------------------
  // Selection Dialog
  // ------------------------------------------------------------------------
  SelectionDialog {
    id: headerSelectionDialog
    titleText: "Header Selection"
    selectedIndex: 0
    model: ListModel {
      ListElement {name:"Item 1"}
      ListElement {name:"Item 2"}
      ListElement {name:"Item 3"}
      ListElement {name:"Item 4"}
    }
    onAccepted: {
      console.log(selectedIndex);
      console.log(headerSelectionDialog.model.get(selectedIndex).name);
    }
  }


  // ------------------------------------------------------------------------
  // Page
  // ------------------------------------------------------------------------
  Page {
    id: mainPage

    Header {
      id: pageHeader
      title: "View Header"
    }

    tools: ToolBarLayout {
      id: commonTools
      visible: true
      ToolIcon {
        platformIconId: "toolbar-view-menu"
        anchors.right: (parent === undefined) ? undefined : parent.right
        onClicked: (myMenu.status == DialogStatus.Closed) ? myMenu.open() : myMenu.close()
      }
    }

  }

  Menu {
    id: myMenu
    visualParent: pageStack
    MenuLayout {
      MenuItem { text: qsTr("Sample menu item") }
    }
  }

}
