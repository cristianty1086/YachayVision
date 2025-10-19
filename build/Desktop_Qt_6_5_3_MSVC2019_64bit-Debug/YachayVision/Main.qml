import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia

ApplicationWindow  {
    id: mainWindow
    width: 1200
    height: 800
    title: qsTr("🏠 Yachay Vision")
    color: "#1e1e1e"
    visible: true

    header: Rectangle {
        height: 60
        color: "#2d2d30"

        RowLayout {
            anchors.fill: parent
            anchors.margins: 10

            Text {
                text: "🏠 Yachay Vision"
                color: "white"
                font.bold: true
                font.pixelSize: 16
                Layout.fillWidth: true
            }

            Row {
                spacing: 15

                // Botón Vista Previa
                Rectangle {
                    width: 100
                    height: 30
                    color: vistaPreviaMouseArea.pressed ? "#0078d4" :
                          (vistaPreviaMouseArea.containsMouse ? "#005a9e" : "transparent")
                    radius: 4

                    Text {
                        text: "🔗 Vista Previa"
                        color: "white"
                        anchors.centerIn: parent
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: vistaPreviaMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: console.log("Vista Previa clickeado")
                    }
                }

                // Botón Rostros
                Rectangle {
                    width: 80
                    height: 30
                    color: rostrosMouseArea.pressed ? "#0078d4" :
                          (rostrosMouseArea.containsMouse ? "#005a9e" : "transparent")
                    radius: 4

                    Text {
                        text: "Rostros"
                        color: "white"
                        anchors.centerIn: parent
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: rostrosMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: console.log("Rostros clickeado")
                    }
                }

                // Botón Placas
                Rectangle {
                    width: 80
                    height: 30
                    color: placasMouseArea.pressed ? "#0078d4" :
                          (placasMouseArea.containsMouse ? "#005a9e" : "transparent")
                    radius: 4

                    Text {
                        text: "Placas"
                        color: "white"
                        anchors.centerIn: parent
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: placasMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: console.log("Placas clickeado")
                    }
                }

                // Botón Alertas
                Rectangle {
                    width: 80
                    height: 30
                    color: alertasMouseArea.pressed ? "#0078d4" :
                          (alertasMouseArea.containsMouse ? "#005a9e" : "transparent")
                    radius: 4

                    Text {
                        text: "Alertas"
                        color: "white"
                        anchors.centerIn: parent
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: alertasMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: console.log("Alertas clickeado")
                    }
                }

                // Botón Dashboard
                Rectangle {
                    width: 90
                    height: 30
                    color: dashboardMouseArea.pressed ? "#0078d4" :
                          (dashboardMouseArea.containsMouse ? "#005a9e" : "transparent")
                    radius: 4

                    Text {
                        text: "Dashboard"
                        color: "white"
                        anchors.centerIn: parent
                        font.pixelSize: 12
                    }

                    MouseArea {
                        id: dashboardMouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: console.log("Dashboard clickeado")
                    }
                }
            }
        }
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 5
        spacing: 5

        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true  // Esto hace que use todo el espacio disponible
            spacing: 5

            // MENU LATERAL
            Rectangle {
                id: sideMenu
                Layout.preferredWidth: 250
                Layout.fillHeight: true
                color: "#252526"
                radius: 8

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 15

                    Text {
                        text: "CONFIG"
                        color: "#cccccc"
                        font.bold: true
                        font.pixelSize: 14
                    }

                    Column {
                        spacing: 8
                        Layout.fillWidth: true

                        // Botón Agregar Cámara
                        Rectangle {
                            width: parent.width
                            height: 35
                            color: agregarCamaraMouseArea.pressed ? "#0078d4" :
                                  (agregarCamaraMouseArea.containsMouse ? "#005a9e" : "transparent")
                            radius: 4

                            Text {
                                text: "📹 Agregar Cámara"
                                color: "white"
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 10
                                font.pixelSize: 12
                            }

                            MouseArea {
                                id: agregarCamaraMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: console.log("Agregar Cámara clickeado")
                            }
                        }

                        // Botón Configuración
                        Rectangle {
                            width: parent.width
                            height: 35
                            color: configMouseArea.pressed ? "#0078d4" :
                                  (configMouseArea.containsMouse ? "#005a9e" : "transparent")
                            radius: 4

                            Text {
                                text: "⚙️ Configuración"
                                color: "white"
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 10
                                font.pixelSize: 12
                            }

                            MouseArea {
                                id: configMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: console.log("Configuración clickeado")
                            }
                        }

                        // Botón Seguridad
                        Rectangle {
                            width: parent.width
                            height: 35
                            color: seguridadMouseArea.pressed ? "#0078d4" :
                                  (seguridadMouseArea.containsMouse ? "#005a9e" : "transparent")
                            radius: 4

                            Text {
                                text: "🔒 Seguridad"
                                color: "white"
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 10
                                font.pixelSize: 12
                            }

                            MouseArea {
                                id: seguridadMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: console.log("Seguridad clickeado")
                            }
                        }
                    }

                    Text {
                        text: "CONTROLES"
                        color: "#cccccc"
                        font.bold: true
                        font.pixelSize: 14
                        Layout.alignment: Qt.AlignLeft
                        Layout.topMargin: 20
                    }

                    Column {
                        spacing: 8
                        Layout.fillWidth: true

                        // Botón Grabar
                        Rectangle {
                            width: parent.width
                            height: 35
                            color: grabarMouseArea.pressed ? "#d13438" :
                                  (grabarMouseArea.containsMouse ? "#a4262c" : "transparent")
                            radius: 4

                            Text {
                                text: "⏺️ Grabar"
                                color: "white"
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 10
                                font.pixelSize: 12
                            }

                            MouseArea {
                                id: grabarMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: console.log("Grabar clickeado")
                            }
                        }

                        // Botón Capturar
                        Rectangle {
                            width: parent.width
                            height: 35
                            color: capturarMouseArea.pressed ? "#107c10" :
                                  (capturarMouseArea.containsMouse ? "#0e6b0e" : "transparent")
                            radius: 4

                            Text {
                                text: "📸 Capturar"
                                color: "white"
                                anchors.verticalCenter: parent.verticalCenter
                                leftPadding: 10
                                font.pixelSize: 12
                            }

                            MouseArea {
                                id: capturarMouseArea
                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: console.log("Capturar clickeado")
                            }
                        }

                        // Slider de Brillo
                        Rectangle {
                            width: parent.width
                            height: 30
                            color: "transparent"

                            Rectangle {
                                width: parent.width
                                height: 4
                                color: "#404040"
                                radius: 2
                                anchors.verticalCenter: parent.verticalCenter

                                Rectangle {
                                    width: parent.width * 0.5
                                    height: 4
                                    color: "#0078d4"
                                    radius: 2
                                }

                                Rectangle {
                                    x: parent.width * 0.5 - 8
                                    y: -6
                                    width: 16
                                    height: 16
                                    radius: 8
                                    color: "#0078d4"
                                    border.color: "#ffffff"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        drag.target: parent
                                        drag.axis: Drag.XAxis
                                        drag.minimumX: 0
                                        drag.maximumX: parent.parent.width - parent.width
                                    }
                                }
                            }
                        }

                        Text {
                            text: "Brillo: 50%"
                            color: "#cccccc"
                            font.pixelSize: 12
                        }
                    }

                    Item { Layout.fillHeight: true }
                }
            }

            // VISTA PREVIA PRINCIPAL (50% ancho)
            Rectangle {
                id: previewArea
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.minimumWidth: 400
                color: "#000000"
                radius: 8

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10

                    Text {
                        text: "VIDEO EN VIVO con overlays"
                        color: "white"
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                    }

                    // Área de video
                    Rectangle {
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        color: "#000000"
                        border.color: "#0078d4"
                        border.width: 2
                        radius: 4

                        Text {
                            anchors.centerIn: parent
                            text: "VISTA PREVIA DE VIDEO\n[Streaming en vivo]"
                            color: "#666666"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignHCenter
                        }

                        // Overlay de detección de rostro
                        Rectangle {
                            x: 100
                            y: 80
                            width: 60
                            height: 80
                            color: "transparent"
                            border.color: "red"
                            border.width: 2

                            Text {
                                anchors.top: parent.bottom
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: "Rostro 92%"
                                color: "red"
                                font.pixelSize: 10
                            }
                        }
                    }
                }
            }

            // PANEL DE RESULTADOS TIEMPO REAL
            Rectangle {
                id: resultsPanel
                Layout.preferredWidth: 300
                Layout.fillHeight: true
                color: "#252526"
                radius: 8

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 10
                    spacing: 15

                    Text {
                        text: "🔄 RESULTADOS TIEMPO REAL"
                        color: "white"
                        font.bold: true
                        font.pixelSize: 14
                        Layout.alignment: Qt.AlignHCenter
                    }

                    // SECCIÓN ROSTROS DETECTADOS
                    ColumnLayout {
                        spacing: 8

                        Text {
                            text: "👤 ROSTROS DETECTADOS (3)"
                            color: "#cccccc"
                            font.bold: true
                            font.pixelSize: 12
                        }

                        RowLayout {
                            spacing: 10

                            Rectangle {
                                width: 70
                                height: 90
                                color: "#2d2d30"
                                radius: 6

                                Column {
                                    anchors.centerIn: parent
                                    spacing: 5

                                    Text {
                                        text: "😊";
                                        font.pixelSize: 20;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                    Text {
                                        text: "92%";
                                        color: "lightgreen";
                                        font.pixelSize: 12;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                }
                            }

                            Rectangle {
                                width: 70
                                height: 90
                                color: "#2d2d30"
                                radius: 6

                                Column {
                                    anchors.centerIn: parent
                                    spacing: 5

                                    Text {
                                        text: "😐";
                                        font.pixelSize: 20;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                    Text {
                                        text: "88%";
                                        color: "yellow";
                                        font.pixelSize: 12;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                }
                            }

                            Rectangle {
                                width: 70
                                height: 90
                                color: "#2d2d30"
                                radius: 6

                                Column {
                                    anchors.centerIn: parent
                                    spacing: 5

                                    Text {
                                        text: "😲";
                                        font.pixelSize: 20;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                    Text {
                                        text: "95%";
                                        color: "lightgreen";
                                        font.pixelSize: 12;
                                        anchors.horizontalCenter: parent.horizontalCenter
                                    }
                                }
                            }
                        }
                    }

                    // SECCIÓN PLACAS IDENTIFICADAS
                    Column {
                        spacing: 8
                        Layout.fillWidth: true

                        Text {
                            text: "🚗 PLACAS IDENTIFICADAS (2)"
                            color: "#cccccc"
                            font.bold: true
                            font.pixelSize: 12
                        }

                        Column {
                            spacing: 5
                            width: parent.width

                            Rectangle {
                                width: parent.width
                                height: 40
                                color: "#2d2d30"
                                radius: 4

                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 5
                                    spacing: 5

                                    Text {
                                        text: "🚗";
                                        font.pixelSize: 16
                                        anchors.verticalCenter: parent.verticalCenter
                                    }
                                    Text {
                                        text: "ABC-123 · 96% · 14:30";
                                        color: "white";
                                        font.pixelSize: 12;
                                        anchors.verticalCenter: parent.verticalCenter
                                    }
                                }
                            }

                            Rectangle {
                                width: parent.width
                                height: 40
                                color: "#2d2d30"
                                radius: 4

                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 5
                                    spacing: 5

                                    Text {
                                        text: "🚗";
                                        font.pixelSize: 16
                                        anchors.verticalCenter: parent.verticalCenter
                                    }
                                    Text {
                                        text: "DEF-456 · 89% · 14:31";
                                        color: "white";
                                        font.pixelSize: 12;
                                        anchors.verticalCenter: parent.verticalCenter
                                    }
                                }
                            }
                        }
                    }


                    // SECCIÓN PERSONAS EN CERCO VIRTUAL
                    Column {
                        spacing: 8
                        Layout.fillWidth: true

                        Text {
                            text: "👤 PERSONAS EN CERCO VIRTUAL (2)"
                            color: "#cccccc"
                            font.bold: true
                            font.pixelSize: 12
                        }

                        Column {
                            spacing: 5
                            width: parent.width

                            Rectangle {
                                width: parent.width
                                height: 50
                                color: "#2d2d30"
                                radius: 4
                                border.color: "#ff4444"
                                border.width: 2

                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 5
                                    spacing: 10

                                    Rectangle {
                                        width: 30
                                        height: 30
                                        radius: 15
                                        color: "#ff4444"
                                        anchors.verticalCenter: parent.verticalCenter

                                        Text {
                                            text: "👤"
                                            font.pixelSize: 14
                                            anchors.centerIn: parent
                                        }
                                    }

                                    Column {
                                        anchors.verticalCenter: parent.verticalCenter
                                        spacing: 2

                                        Text {
                                            text: "Persona No Autorizada"
                                            color: "#ff4444"
                                            font.bold: true
                                            font.pixelSize: 12
                                        }
                                        Text {
                                            text: "Zona Restringida · 94% · 14:35"
                                            color: "white"
                                            font.pixelSize: 10
                                        }
                                    }
                                }
                            }

                            Rectangle {
                                width: parent.width
                                height: 50
                                color: "#2d2d30"
                                radius: 4
                                border.color: "#ffaa00"
                                border.width: 2

                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 5
                                    spacing: 10

                                    Rectangle {
                                        width: 30
                                        height: 30
                                        radius: 15
                                        color: "#ffaa00"
                                        anchors.verticalCenter: parent.verticalCenter

                                        Text {
                                            text: "🚶"
                                            font.pixelSize: 14
                                            anchors.centerIn: parent
                                        }
                                    }

                                    Column {
                                        anchors.verticalCenter: parent.verticalCenter
                                        spacing: 2

                                        Text {
                                            text: "Visitante en Área Controlada"
                                            color: "#ffaa00"
                                            font.bold: true
                                            font.pixelSize: 12
                                        }
                                        Text {
                                            text: "Entrada Principal · 87% · 14:32"
                                            color: "white"
                                            font.pixelSize: 10
                                        }
                                    }
                                }
                            }
                        }
                    }




                    Item { Layout.fillHeight: true }
                }
            }

        }

        // LÍNEA DE TIEMPO EN PARTE INFERIOR
        Rectangle {
            id: timelineContainer
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: 140
            color: "#252526"
            border.color: "#0078d4"
            border.width: 1

            Column {
                anchors.fill: parent
                anchors.margins: 10
                spacing: 8

                Text {
                    text: "⏰ LÍNEA DE TIEMPO DE EVENTOS"
                    color: "#cccccc"
                    font.bold: true
                    font.pixelSize: 12
                }

                // Contenedor principal de la línea de tiempo
                Rectangle {
                    width: parent.width
                    height: 70
                    color: "#2d2d30"
                    radius: 6
                    clip: true

                    // Línea horizontal central
                    Rectangle {
                        id: timelineLine
                        anchors.verticalCenter: parent.verticalCenter
                        width: parent.width
                        height: 2
                        color: "#0078d4"
                    }

                    // Contenedor scrollable para eventos
                    Flickable {
                        id: timelineFlickable
                        anchors.fill: parent
                        contentWidth: eventsRow.width
                        contentHeight: parent.height
                        clip: true

                        Row {
                            id: eventsRow
                            height: parent.height
                            spacing: 40

                            // Evento 1 - Intrusión
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#ff4444"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(0)
                                        onEntered: eventTooltip.show("🚨 INTRUSIÓN\n14:45:23", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:45"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // Evento 2 - Placa detectada
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#0078d4"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(1)
                                        onEntered: eventTooltip.show("🚗 PLACA ABC-123\n14:42:15", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:42"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // Evento 3 - Rostro reconocido
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#00aa00"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(2)
                                        onEntered: eventTooltip.show("👤 ROSTRO AUTORIZADO\n14:40:01", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:40"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // Evento 4 - Movimiento
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#ffaa00"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(3)
                                        onEntered: eventTooltip.show("🚶 MOVIMIENTO\n14:38:34", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:38"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // Evento 5 - Cerco virtual
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#aa00ff"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(4)
                                        onEntered: eventTooltip.show("⚠️ CERCO VIRTUAL\n14:35:22", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:35"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }

                            // Más eventos para demostrar scroll...
                            Column {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                spacing: 5

                                Rectangle {
                                    width: 12
                                    height: 12
                                    radius: 6
                                    color: "#ff4444"
                                    anchors.horizontalCenter: parent.horizontalCenter
                                    border.color: "white"
                                    border.width: 2

                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: eventDetails.showEvent(5)
                                        onEntered: eventTooltip.show("🚨 INTRUSIÓN\n14:32:10", this)
                                        onExited: eventTooltip.hide()
                                    }
                                }

                                Text {
                                    text: "14:32"
                                    color: "#aaaaaa"
                                    font.pixelSize: 9
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                            }
                        }
                    }

                    // Indicadores de scroll
                    Rectangle {
                        visible: timelineFlickable.contentWidth > timelineFlickable.width
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 20
                        height: 20
                        color: "#0078d4"
                        radius: 10
                        opacity: 0.7

                        Text {
                            text: "◀"
                            color: "white"
                            font.pixelSize: 10
                            anchors.centerIn: parent
                        }
                    }

                    Rectangle {
                        visible: timelineFlickable.contentWidth > timelineFlickable.width
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        width: 20
                        height: 20
                        color: "#0078d4"
                        radius: 10
                        opacity: 0.7

                        Text {
                            text: "▶"
                            color: "white"
                            font.pixelSize: 10
                            anchors.centerIn: parent
                        }
                    }
                }

                // PANEL DE DETALLES DEL EVENTO
                Rectangle {
                    id: eventDetails
                    width: parent.width
                    height: 0
                    color: "#1e1e1e"
                    radius: 4
                    clip: true
                    visible: height > 0

                    function showEvent(eventIndex) {
                        eventDetails.height = eventIndex >= 0 ? 60 : 0
                        // Aquí cargarías los datos del evento según el índice
                        var events = [
                            {title: "🚨 INTRUSIÓN DETECTADA", desc: "Persona no autorizada en zona restringida • 14:45:23 • Confianza: 94%"},
                            {title: "🚗 PLACA IDENTIFICADA", desc: "Vehículo ABC-123 detectado • 14:42:15 • Confianza: 96%"},
                            {title: "👤 ROSTRO RECONOCIDO", desc: "Empleado autorizado • 14:40:01 • Confianza: 95%"},
                            {title: "🚶 MOVIMIENTO DETECTADO", desc: "Actividad en área común • 14:38:34 • Confianza: 87%"},
                            {title: "⚠️ CERCO VIRTUAL", desc: "Persona en área restringida • 14:35:22 • Confianza: 89%"}
                        ]

                        if (eventIndex >= 0 && eventIndex < events.length) {
                            eventTitle.text = events[eventIndex].title
                            eventDescription.text = events[eventIndex].desc
                        }
                    }

                    Column {
                        anchors.fill: parent
                        anchors.margins: 8
                        spacing: 4

                        Text {
                            id: eventTitle
                            text: "🚨 INTRUSIÓN DETECTADA"
                            color: "#ff4444"
                            font.bold: true
                            font.pixelSize: 11
                        }

                        Text {
                            id: eventDescription
                            text: "Persona no autorizada en zona restringida • 14:45:23 • Confianza: 94%"
                            color: "white"
                            font.pixelSize: 9
                            width: parent.width
                            wrapMode: Text.Wrap
                        }

                        Row {
                            spacing: 8

                            Rectangle {
                                width: 70
                                height: 22
                                color: "#0078d4"
                                radius: 4

                                Text {
                                    text: "VER VIDEO"
                                    color: "white"
                                    font.pixelSize: 8
                                    font.bold: true
                                    anchors.centerIn: parent
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: console.log("Reproducir video del evento")
                                }
                            }

                            Rectangle {
                                width: 60
                                height: 22
                                color: "transparent"
                                border.color: "#0078d4"
                                border.width: 1
                                radius: 4

                                Text {
                                    text: "CERRAR"
                                    color: "#0078d4"
                                    font.pixelSize: 8
                                    font.bold: true
                                    anchors.centerIn: parent
                                }

                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: eventDetails.showEvent(-1)
                                }
                            }
                        }
                    }

                    Behavior on height {
                        NumberAnimation { duration: 300 }
                    }
                }
            }

            // TOOLTIP para hover
            Rectangle {
                id: eventTooltip
                width: tooltipText.width + 10
                height: tooltipText.height + 8
                color: "#333333"
                radius: 4
                visible: false
                z: 1000

                function show(text, source) {
                    tooltipText.text = text
                    var pos = source.mapToItem(timelineContainer, source.width/2, 0)
                    eventTooltip.x = pos.x - eventTooltip.width/2
                    eventTooltip.y = pos.y - eventTooltip.height - 5
                    eventTooltip.visible = true
                }

                function hide() {
                    eventTooltip.visible = false
                }

                Text {
                    id: tooltipText
                    anchors.centerIn: parent
                    color: "white"
                    font.pixelSize: 9
                }
            }
        }

    }

    // BARRA DE ESTADO
    footer: Rectangle {
        height: 30
        color: "#0078d4"

        RowLayout {
            anchors.fill: parent
            anchors.margins: 5

            Text {
                text: "CPU: 45% | FPS: 30 | ONLINE"
                color: "white"
                font.pixelSize: 12
                Layout.fillWidth: true
            }

            Text {
                text: "Sistema de Videovigilancia Activo"
                color: "white"
                font.pixelSize: 12
            }
        }
    }

}
