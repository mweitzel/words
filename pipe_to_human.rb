require 'sinatra/base'
require 'erb'

class PipeToHuman < Sinatra::Base
  # ... app code here ...

  # start the server if ruby file executed directly
  run! if app_file == $0

  get '/' do
    erb :thing
  end

end