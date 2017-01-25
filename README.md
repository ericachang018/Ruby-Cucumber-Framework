Web application testing framework using the following items: 

Ruby -> http://ruby-doc.org/
Cucumber -> https://cucumber.io/docs
Watir -> https://watir.com/documentation/
Page Object -> https://github.com/cheezy/page-object
Data_Magic ->https://github.com/cheezy/data_magic

~~~~ Debugging ~~~~
IRB_browser_google.rb 
open up IRB 
>> load 'irb_browser_google.rb' 
Will open up a browser window you can test out commands on. 

Example command 
@browser.button(:identify_button, :id => 'some_id_for_this_button').click


~~~~ Updating to Ruby 2.4.0 ~~~~

updating ruby framework project
- rvm install 2.4.0
- rvm gemset create New_project
- rvm use New_project

- rm -rf Gemfile (get rid of old gemfile)
- rm -rf Gemfile.lock

- Get new Gemfile
- install bundler
- bundle install

- open project in Ruby Mine
- set perfrences to use 2.4.0
- make sure you have selenium as well
- gem install selenium-webdriver

local gems should look like
*** LOCAL GEMS ***

bigdecimal (default: 1.2.8)
builder (3.2.3)
bundle (0.0.1)
bundler (1.14.3)
bundler-unload (1.0.2)
childprocess (0.6.1)
cucumber (2.4.0)
cucumber-core (1.5.0)
cucumber-wire (0.0.1)
data_magic (1.0)
did_you_mean (1.0.0)
diff-lcs (1.3)
domain_name (0.5.20161129)
executable-hooks (1.3.2)
facets (3.1.0)
faker (1.7.2)
ffi (1.9.17)
fig_newton (0.13)
gem-wrappers (1.2.7)
gherkin (4.0.0)
headless (2.3.1)
http-cookie (1.0.3)
i18n (0.7.0)
io-console (default: 0.4.5)
json (2.0.3, default: 1.8.3)
mime-types (3.1)
mime-types-data (3.2016.0521)
minitest (5.8.5)
multi_json (1.12.1)
multi_test (0.1.2)
net-http-persistent (2.9.4)
net-telnet (0.1.1)
netrc (0.11.0)
page-object (2.0.0)
page_navigation (0.10)
power_assert (0.2.6)
psych (2.2.2, default: 2.1.0)
rake (10.4.2)
rdoc (default: 4.2.1)
rest-client (2.0.0)
rubygems-bundler (1.4.4)
rubyzip (1.2.0)
rvm (1.11.3.9)
selenium-webdriver (3.0.5)
test-unit (3.1.5)
unf (0.1.4)
unf_ext (0.0.7.2)
watir (6.1.0)
webdriver-highlighter (0.1.0)
webdriver-user-agent (7.4)
websocket (1.2.3)
yml_reader (0.7)


