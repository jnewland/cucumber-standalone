require 'thor'
require 'thor/group'
require 'fileutils'
class CucumberStandalone < Thor::Group
  include Thor::Actions

  argument :dir_name

  def self.source_root
    File.join(File.dirname(__FILE__), '..', 'templates')
  end

  def create_stuff
    self.destination_root = File.expand_path(dir_name, destination_root)
    empty_directory '.'
    FileUtils.cd(destination_root)
    empty_directory 'features'
    inside 'features' do
      template 'example.feature', 'example.feature'
      empty_directory 'support'
      template 'support/env.rb'
      template 'step_definitions/web_steps.rb'
    end

  end

end