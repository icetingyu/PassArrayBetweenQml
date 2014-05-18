/*
 * Copyright (c) 2014 Simon HSU from Taiwan BlackBerry Developer Group
 * Any question please email to bsebadmin (at) gmail.com
 */

import bb.cascades 1.2

Page {
    
    function inputData(input)
    {
        console.log("input : " +input);
        for (var i = 0 ; i < input.length ; i++)
        {
            data.text += ".. "+input[i];
        }
    }
    Container {
        Label {
            // Localized text with the dynamic translation and locale updates support
            text: qsTr("New Page") + Retranslate.onLocaleOrLanguageChanged
            textStyle.base: SystemDefaults.TextStyles.BigText
        }
        Label {
            id:data
            text: "ave"
        }
    }
}

