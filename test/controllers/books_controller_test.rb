require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test 'should ok get books' do
    get '/api/v1/books?subjects="book"'

    assert_response :ok
  end

  test 'should bad request get books' do
    get '/api/v1/books'

    assert_response :bad_request
  end
end
