module FeatureFlag
	extend ActiveSupport::Concern
	
	included do
		def check_featureflag(flag)
			FeatureFlagConfig.instance.get_value(flag)
		end
 	end

  	class_methods do
  	end	
end
