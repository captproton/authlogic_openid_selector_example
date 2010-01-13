# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  # See Rails::Configuration for more options.

  # Skip frameworks you're not going to use. To use Rails without a database
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "aws-s3", :lib => "aws/s3"
  
  #config.gem "authlogic-oid", :lib => "authlogic_openid"

  # Only load the plugins named here, in the order given. By default, all plugins 
  # in vendor/plugins are loaded in alphabetical order.
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]
  #config.plugin_paths += ["#{RAILS_ROOT}/../../Libs"]
  #config.plugins = [:authlogic, :authlogic_openid, :open_id_authentication]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  #config.action_controller.session = {
  #  :session_key => '_authgasm_example_session',
  #  :secret      => '94b9c594695e69bdef6b1d4be037af5853be976b39a52a02f260fca0d0a36a8f913572bfdb631f55971a3b10b8dd9a875f9776ca61371741544e6ccc064dd41e'
  #}

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with "rake db:sessions:create")
  config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector
  
  config.gem "authlogic"
  config.gem "facebooker"
  config.gem 'gravtastic', :version => '>= 2.1.0'


  config.action_mailer.delivery_method = :smtp

  config.gem "delayed_job",
    :lib     => "delayed_job",
    :version => "1.8.4",
    :source  => "http://gemcutter.org"
  config.gem "paperclip",
    :lib     => "paperclip",
    :version => "2.3.1.1",
    :source  => "http://gemcutter.org"
#  config.gem "aws-s3",
#    :lib     => "aws/s3",
#    :version => "0.6.2" ## commented out 
## becuase of:
##   test_should_show_user(UsersControllerTest):
## NameError: uninitialized constant Authlogic::TestCase::ControllerAdapter
##    /opt/local/lib/ruby/gems/1.8/gems/aws-s3-0.6.2/lib/aws/s3/extensions.rb:206:in `const_missing'
##    /test/functional/users_controller_test.rb:18:in `test_should_show_user'


  config.gem "mime-types",
    :lib     => "mime/types",
    :version => "1.16"
  config.gem "xml-simple",
    :lib     => "xmlsimple",
    :version => "1.0.12"
  config.gem "utility_scopes",
    :lib     => "utility_scopes",
    :version => "0.3.1",
    :source  => "http://gemcutter.org"
  config.gem "formtastic", 
    :lib     => 'formtastic', 
    :source  => 'http://gemcutter.org',
    :version => '0.9.7'
  config.gem "inherited_resources", 
    :lib     => 'inherited_resources', 
    :source  => 'http://gemcutter.org',
    :version => '1.0.2'
  config.gem "activemerchant",
    :lib     => 'active_merchant',
    :version => '1.4.2'

  
    config.time_zone = 'Tijuana'
end
