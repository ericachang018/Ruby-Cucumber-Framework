class GoogleHome
	include PageObject 
	include DataMagic
	include PageObject::PageFactory

# gets url from env_qa.yml 
	page_url "#{FigNewton.base_url}"
end 