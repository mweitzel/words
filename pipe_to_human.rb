require 'sinatra/base'
require 'erb'
require 'markdown'

class PipeToHuman < Sinatra::Base
  # ... app code here ...

  # start the server if ruby file executed directly
  run! if app_file == $0

  get '/' do
    erb :layout, :locals => { :title => "index", :text => (markdown(:index) rescue "") }
  end

  get '/:title' do |title|
    begin
      erb :layout, :locals => { :title => title, :text => markdown(title.to_sym) }
    rescue
      erb :layout, :locals => { :title => title, :text => "cant find this one.."}
    end
  end

end