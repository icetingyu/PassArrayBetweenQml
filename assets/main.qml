/*
 * Copyright (c) 2014 Simon HSU from Taiwan BlackBerry Developer Group
 * Any question please email to bsebadmin (at) gmail.com
 */

import bb.cascades 1.2


NavigationPane {
    id: nav
    property variant myArray;
    
    function demo() {
        var tmp = []
        tmp.push("1");
        tmp.push("2");
        tmp.push("3");
        return tmp;
    }
    Page {
        Container {
            Label {
                // Localized text with the dynamic translation and locale updates support
                text: qsTr("Hello World") + Retranslate.onLocaleOrLanguageChanged
                textStyle.base: SystemDefaults.TextStyles.BigText
            }
            Button {
                id: btn
                text: "press"
                onClicked: {
                    myArray = demo();
                    var page = about.createObject();
                    nav.push(page); 
                    page.inputData(myArray)
                }
                attachedObjects: [
                    ComponentDefinition {
                        id: about
                        source: "NewPage.qml"
                    }
                ]
            }
        }
    }
}

