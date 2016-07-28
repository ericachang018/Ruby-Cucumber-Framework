class GoogleHome
	include PageObject 
	include DataMagic
	include PageObject::PageFactory

# gets url from env_qa.yml 
	page_url "#{FigNewton.base_url}"

	
	text_field(:google_search_bar, :id => 'gs_sc0')

	def search_google
				self.google_search_bar
				populate_page_with data_for :google_search_test
				self.submit_button
	end

end 