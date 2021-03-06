//
//  ScriptTests.swift
//  TySimulator
//
//  Created by luckytianyiyan on 2016/11/25.
//  Copyright © 2016年 luckytianyiyan. All rights reserved.
//

import Quick
import Nimble
@testable import TySimulator

class ScriptTests: QuickSpec {
    override func spec() {
        describe("parsing script", closure: {
            
//            context("input valid command", {
//                let command = "${{\"device\": \"booted\", \"application\": \"com.tianyiyan.TYTumblr\"}}"
//                let script = "open \(command)"
//                it("should be parsed", closure: {
//                    let transformed = Script.transformedScript(script)
//                    expect(transformed).toNot(equal(script))
//                })
//            })
            
            context("input not valid command", {
                afterEach {
                    print("after not")
                }
                let command = "${{xxxx}}"
                let script = "open \(command)"
                it("should be parsed", closure: {
                    let transformed = Script.transformedScript(script)
                    expect(transformed).to(equal(script))
                })
            })
        })
    }
}
