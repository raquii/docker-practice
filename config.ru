require './api'

# Clean up database connections after every request (required)
use OTR::ActiveRecord::ConnectionManagement

# Enable ActiveRecord's QueryCache for every request (optional)
use OTR::ActiveRecord::QueryCache

run API::Root