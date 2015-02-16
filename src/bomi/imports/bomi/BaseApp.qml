import QtQuick 2.0
import bomi 1.0

Item {
    id: root
    property Player player
    property string name
    Component {
        id: playerComponent
        Player { }
    }

    Component.onCompleted: {
        if (!player)
            player = playerComponent.createObject(root)
    }
}
