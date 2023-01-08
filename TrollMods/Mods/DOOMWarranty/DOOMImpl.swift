//
//  DOOMImpl.swift
//  TrollMods
//
//  Created by Hariz Shirazi on 2023-01-08.
//

import Foundation

func OverwriteWarranty() {
    DispatchQueue.global(qos: .userInteractive).async {
        let htmlfile = Bundle.main.path(forResource: "doom", ofType: "html");
        
        //TODO: Region detection?
        let success = OverwriteFile(newFileData: try! Data(contentsOf: URL.init(fileURLWithPath: htmlfile!)), targetPath: "/System/Library/PrivateFrameworks/Settings/GeneralSettingsUI.framework/en.lproj/warranty.html");
    }
}
