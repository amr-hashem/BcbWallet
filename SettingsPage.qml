import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import "rpc.js" as Rpc

Page {

    anchors.fill: parent

    property alias light: lightCb.checked
    property alias wallet: walletTf.text

    background: Item{}

    GridLayout {
        columns: 2

        CheckBox {
            id: lightCb
            Layout.columnSpan: 2
            text: qsTr( checked ? "Light" : "Dark")
            checked: true
        }
        TextField {
            id: walletTf
            placeholderText: qsTr("wallet")
            Layout.fillWidth: true
        }
        Button {
            text: qsTr("New Wallet")
            onClicked: {
//                Rpc.getAccounts("CB573F25A6C60724D53F949E5C86CA6A6816E1731F6DCF7C26F2F3F168C0C529");
                var w = Rpc.createWallet();
                wallet = w;
            }
        }
    }

}
