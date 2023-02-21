class WelcomeController < ApplicationController
    include FeatureFlag

    def index
        if check_featureflag("my_feature")
        	@welcome = "On" 
        else
			@welcome = "Off" 
        end
    end
end
