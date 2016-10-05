require "sinatra"
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"

require_relative "models/pokemon"
require_relative "models/trainer"
require_relative "models/team"
