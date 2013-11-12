# encoding : utf-8
require 'yaml'
class Setting
    
  def self.getYaml(filepath="config/settings.yml")
    YAML.load_file(filepath)
  end
end
