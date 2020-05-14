# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'qt-rc.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(320, 240)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.horizontalLayoutWidget = QtWidgets.QWidget(self.centralwidget)
        self.horizontalLayoutWidget.setGeometry(QtCore.QRect(9, 129, 301, 51))
        self.horizontalLayoutWidget.setObjectName("horizontalLayoutWidget")
        self.horizontalLayout = QtWidgets.QHBoxLayout(self.horizontalLayoutWidget)
        self.horizontalLayout.setContentsMargins(0, 0, 0, 0)
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.noButton = QtWidgets.QPushButton(self.horizontalLayoutWidget)
        self.noButton.setObjectName("noButton")
        self.horizontalLayout.addWidget(self.noButton)
        self.siButton = QtWidgets.QPushButton(self.horizontalLayoutWidget)
        self.siButton.setObjectName("siButton")
        self.horizontalLayout.addWidget(self.siButton)
        self.gridLayoutWidget = QtWidgets.QWidget(self.centralwidget)
        self.gridLayoutWidget.setGeometry(QtCore.QRect(10, 30, 301, 81))
        self.gridLayoutWidget.setObjectName("gridLayoutWidget")
        self.gridLayout = QtWidgets.QGridLayout(self.gridLayoutWidget)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.gridLayout.setObjectName("gridLayout")
        self.showLabel = QtWidgets.QLabel(self.gridLayoutWidget)
        self.showLabel.setText("¿Quieres jugar?")
        self.showLabel.setObjectName("showLabel")
        self.gridLayout.addWidget(self.showLabel, 0, 0, 1, 1)
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(100, 0, 151, 21))
        self.label.setObjectName("label")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 320, 20))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.contador_pregunta = 0

        self.retranslateUi(MainWindow)
        self.noButton.clicked.connect(lambda: self.noAction())
        self.siButton.clicked.connect(lambda: self.yesAction())
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.noButton.setText(_translate("MainWindow", "No"))
        self.siButton.setText(_translate("MainWindow", "Si"))
        self.label.setText(_translate("MainWindow", "Reconoce Cuadriláteros"))

    def changeText(self):
        lista_preguntas=["¿Todos sus lados son diferentes?","¿Solo tiene un par de lados paralelos?","¿Todos sus lados son iguales?","¿Todos sus ángulos son iguales?","Todos sus ángulos son rectos?"]
        self.showLabel.setText(lista_preguntas[self.contador_pregunta])


    def changeTextString(self,num_respuesta):
        respuesta=["Irregular","Trapezoide","Cuadrado","Rombo","Rectángulo","Romboide","Adiós!!"]
        self.showLabel.setText(respuesta[num_respuesta])
        self.siButton.setEnabled(False)
        self.noButton.setEnabled(False)

    def yesAction(self):
        self.changeText()

        if self.contador_pregunta == 0:
            self.contador_pregunta = self.contador_pregunta + 1
            return
        elif self.contador_pregunta == 1:
            self.changeTextString(0)
            return
        elif self.contador_pregunta == 2:
            self.changeTextString(1)
            return
        elif self.contador_pregunta == 3:
            self.changeText()
            self.contador_pregunta = self.contador_pregunta + 1
            return
        elif self.contador_pregunta == 4:
            self.changeTextString(2)
            return
        elif self.contador_pregunta == 5:
            self.changeTextString(4)
            return
            


    def noAction(self):
        
        if self.contador_pregunta == 0:
            self.changeTextString(6)
            return
        elif self.contador_pregunta == 1:
            self.changeText()
            self.contador_pregunta = self.contador_pregunta + 1
            return
        elif self.contador_pregunta == 2:
            self.changeText()
            self.contador_pregunta = self.contador_pregunta + 1
            return
        elif self.contador_pregunta == 3:
            self.changeText()
            self.contador_pregunta = self.contador_pregunta + 2
            return
        elif self.contador_pregunta == 4:
            self.changeTextString(3)
            return
        elif self.contador_pregunta == 5:
            self.changeTextString(5)
            return
        


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

