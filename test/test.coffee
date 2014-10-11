"use strict"
grunt = require("grunt")
parser = require("../index")
exports.nodeunit = 
    test_1: (test) ->
        test.expect 1
        parser("./test_subjects/chrome_bookmark.html",(results)->
            console.dir results
            test.ok true, "this had better work."
            test.done()
        )
    test_2: (test) ->
        test.expect 1
        parser("./test_subjects/chrome_bookmark2.html",(results)->
            console.dir results
            test.ok true, "this had better work."
            test.done()
        )

        