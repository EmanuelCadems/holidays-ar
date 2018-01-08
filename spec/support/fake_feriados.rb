require 'sinatra/base'

class FakeFeriados < Sinatra::Base
  get '/interior/feriados' do
    html_response 200, 'feriados.html'
  end

  private

  def html_response(response_code, file_name)
    content_type :html
    status response_code
    File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
  end
end
