require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'webdriver-highlighter'
require 'data_magic'
require 'webdriver-user-agent'
require 'headless'
require 'fig_newton'
require 'rest-client'
World(PageObject::PageFactory)

#enviroment setup #prod, beta, uat, qa, dev, local 
#Set enviroment here currently running the env_qa.yml file
def enviroment_name 
	(ENV['ENVIROMENT']||= 'qa').downcase.to_sym 
end 

#browser setup firefox, chrome, headless ect
def browser_name 
	(ENV['BROWSER']||='chrome').downcase.to_sym
end 

#mobile device user-agent setup  #iphone, iphone5s, iphone4s, iphone6, iphone6plus, ipad, android_phone, android_tablet
def device_name
  (ENV['DEVICE'] ||= 'other').downcase.to_sym
end


#mobile orientation setup #landscape, portrait
def orientation_type
  (ENV['ORIENTATION'] ||= 'portrait').downcase.to_sym
end

#setup for DataMagic .yml files in data folder 
GEM_ROOT = File.expand_path("../..",__FILE__)
DataMagic.yml_directory = ("#{GEM_ROOT}/data/")
DataMagic.load('data.yml')

#set up for fig_newton
FigNewton.yml_directory = ("#{GEM_ROOT}/data")

if enviroment_name == :prod || $env == 'prod'
	FigNewton.load('env_prod.yml')
elsif enviroment_name == :beta || $env == 'beta'
	FigNewton.load(env_beta.yml)
elsif enviroment_name == :uat || $env == 'uat'
  FigNewton.load('env_uat.yml')
elsif enviroment_name == :qa || $env == 'qa'
  FigNewton.load('env_qa.yml')
elsif enviroment_name == :dev || $env == 'dev'
  FigNewton.load('env_dev.yml')
else
  FigNewton.load('env_local.yml')
  #$env ='local'
end 



def initialize_pageobjects
  #setup of page objects
  @browser.driver.manage.delete_all_cookies
  @test_page = GoogleHome.new(@browser)
  

  #log and report setup
  #create_log
  #start_report
  #report_row("Browser Initialization","Check browser is initialized","Chrome","Pass","Text Present")

end

def initialize_browser(browser)
	opts = Hash.new 
	opts[:agent] = device_name if device_name
  opts[:orientation] = orientation_type if orientation_type

  if browser_name == :firefox || browser == 'firefox'

    if (device_name.empty? || device_name == :other) || (orientation_type.empty? || orientation_type == :other)
      @browser=Watir::Browser.new(:firefox, listener: WebDriverHighlighter.new)
      @browser.driver.manage.window.maximize

    else

      opts[:browser] = :firefox
      driver = Webdriver::UserAgent.driver(opts)
      @browser = Watir::Browser.new(driver)

    end

  elsif browser_name == :chrome || browser == 'chrome'
    switches = ['--proxy-server=127.0.0.1:8080'] # BurpSuite Proxy Config
    if (device_name.empty? || device_name == :other) || (orientation_type.empty? || orientation_type == :other)
      #@browser=Watir::Browser.new(:chrome, :switches => switches, listener: WebDriverHighlighter.new)
      @browser=Watir::Browser.new(:chrome, listener: WebDriverHighlighter.new)
      @browser.driver.manage.window.maximize

    else

      opts[:browser] = :chrome
      driver = Webdriver::UserAgent.driver(opts)
      @browser = Watir::Browser.new(driver)

    end

  elsif browser_name == :phantomjs || browser == 'phantomjs'

    @browser = Watir::Browser.new :phantomjs

  elsif browser_name == :headless || browser == 'headless'

    headless = Headless.new
    headless.start
    @browser = Watir::Browser.new
    at_exit do
      headless.destroy
    end

  elsif browser_name == :safari || browser == 'safari'

    @browser=Watir::Browser.new(:safari, listener: WebDriverHighlighter.new)
    @browser.driver.manage.window.maximize

  end

  #@browser.driver.manage.timeouts.implicit_wait = 30

end


	



























