require 'test_helper'

class PickupsControllerTest < ActionDispatch::IntegrationTest
  test 'create pickup' do
    post '/api/v1/pickups',
         params: { work_key: '/works/OL65487W', pickup_schedule: DateTime.new, name: 'erka',
                   phone_number: '0812323123' }
    assert_response :created
  end

  test 'list pickup' do
    get '/api/v1/pickups'

    assert_response :ok
  end
end
