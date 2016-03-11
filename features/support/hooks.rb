Before do |scenario|

  #initialize the browser, page objects, and navigate to site
  begin
    p "Starting #{scenario}"
    initialize_browser('other')
    initialize_pageobjects
  rescue => e
    puts "Initialization FAILED with exception '#{e}'"
  end

end
