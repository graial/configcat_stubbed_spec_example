require 'rails_helper'

RSpec.describe "FeatureFlags", type: :request do
	let(:podc_stop) { create(:stop, name: "PODC") }
	
	50.times do	
		it "returns 404 on the market run endpoint" do
		    puts FeatureFlagConfig.instance.get_value('my_feature')
			get "/"
		end
	end
end