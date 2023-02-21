require 'configcat'
require 'singleton'

class FeatureFlagConfig
  include Singleton
  def initialize
    @client = ConfigCat.create_client(ENV["CONFIGCAT_KEY"])
  end

  def get_value(flag)
  	@client.get_value(flag, false)
  end

  def refresh
    @client.force_refresh
  end
end