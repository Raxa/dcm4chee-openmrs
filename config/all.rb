require_relative 'data_sources'

use Rack::Protection, except: :session_hijacking
DataMapper.setup :default, DataSources[:openmrs_sql_url]
