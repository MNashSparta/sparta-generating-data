require 'yaml'

class YamlExample

  attr_accessor :user_credentials, :env, :nested

  def initialize
    @user_credentials = YAML.load_file('user_credentials.yml')
    @env = YAML.load_file('environments.yml')
    @nested = YAML.load_file('list.yml')
  end

end

yml = YamlExample.new
p yml.user_credentials
p yml.env
p yml.nested
