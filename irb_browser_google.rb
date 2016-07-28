# How to use 
# Enter the IRB
# >> load 'irb_brower.rb"
# manipulate the webbrowser using @browser commands 
# docs -> https://github.com/watir/watir-webdriver/

require 'watir-webdriver'
require 'webdriver-highlighter'
# require 'watir-scroll'
@browser=Watir::Browser.new(:chrome, listener: WebDriverHighlighter.new)
@browser.goto 'https://www.google.com'
