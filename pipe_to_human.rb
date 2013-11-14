require 'sinatra/base'

class PipeToHuman < Sinatra::Base
  # ... app code here ...

  # start the server if ruby file executed directly
  run! if app_file == $0


  get '/' do
    "sup"
  end

end