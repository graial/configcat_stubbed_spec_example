require 'webmock'
include WebMock::API

def stub_configcat_config(value)
	stub_request(
		:get, 
		"https://cdn-global.configcat.com/configuration-files/#{ENV['CONFIGCAT_KEY']}/config_v5.json"
	).to_return(
		status: 200,
		body: {
		  "p": {
		    "u": "https://cdn-global.configcat.com",
		    "r": 0
		  },
		  "f": {
		    "my_feature": {
		      "v": value,
		      "i": "399e479c",
		      "t": 0,
		      "p": [],
		      "r": []
		    }
		  }
		}.to_json
	)
end