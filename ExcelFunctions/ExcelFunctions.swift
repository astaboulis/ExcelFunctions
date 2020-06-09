//
//  ExcelFunctions.swift
//  ExcelFunctions
//
//  Created by Angelos Staboulis on 10/6/20.
//  Copyright © 2020 Angelos Staboulis. All rights reserved.
//

import Foundation
class ExcelFunctions{
    func pmt(rate:Double,nper:Double,pv:Double)->Double{
        let convertRate = rate/100
        let v:Double = (1 + (convertRate / 12))
        let t:Double = (-(nper / 12) * 12)
        let result:Double = (pv * (convertRate / 12)) / (1 - pow(v, t))
        return result
    }
}
