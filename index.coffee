jsdom = require "jsdom"
fs = require("fs");

parsehtml = (file, callback) ->
  html = fs.readFileSync(file).toString();
  jsdom.env
    html: html
    scripts: ["./req/jquery.min.js"]
    done: (errors, window) ->
      $ = window.$
      itemdoubleclick = ""
      results = new Array()
      # console.log $("html").html()
      anchors = $("dl").find("a")
      # console.log anchors.length
      #console.log $
      # console.log anchors
      anchors.each (i, e) ->
        url = $(e).attr("href")
        name = $(e).text()
        # console.log name
        add_date = $(e).attr("add_date")
        tags = new Array()
        # console.dir $(e).attr("href")
        $(e).parents("dl").each (ii, ee) ->
          folder = $(ee).prev()
          # console.dir folder.text()
          tag = folder.text()
          tags.push tag

        result =
          url: url
          name: name
          add_date: add_date
          tags: tags

        results.push result
      
      # console.dir results

      if typeof callback is "function" 
        # console.log results.length
        callback results
      else console.warn("Callback isn't a function.")
module.exports = parsehtml