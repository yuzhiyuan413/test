# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Demo::Application.initialize!
Slim::Engine.set_default_options attr_delims: { '[' => ']','(' => ')'}
