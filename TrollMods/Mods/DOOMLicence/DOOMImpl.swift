//
//  DOOMImpl.swift
//  TrollMods
//
//  Created by Hariz Shirazi on 2023-01-08.
//

import Foundation

func OverwriteLicence() {
    DispatchQueue.global(qos: .userInteractive).async {
        let htmlfile = Bundle.main.path(forResource: "doom", ofType: "html");
        // TODO: Get device locale
        // This should be easy, considering there are public APIs to do this
        // http://stackoverflow.com/questions/40909754/ddg#40909806
        // http://stackoverflow.com/questions/40909754/ddg#40909806
        let success = OverwriteFile(newFileData: try! Data(contentsOf: URL.init(fileURLWithPath: htmlfile!)), targetPath: "/System/Library/ProductDocuments/SoftwareLicenseAgreements/iOS.bundle/en.lproj/License.html");
    }
}

