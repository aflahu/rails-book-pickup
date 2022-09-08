## Set up dev environment
- Install Ruby (e.g. see instructions in https://gorails.com/setup/osx/10.15-catalina)
- Install Rails and dependencies. Run bundle install in project directory.

## Set up database
- `bundle exec rake db:reset`

## Run server
- Run backend server: `rails s`
- Open http://localhost:3000/ in a browser.

## Test server
- `rails test`

## Enpoint list
- get `/api/v1/books?subject=data`
- get `/api/v1/pickups`
- post `/api/v1/pickups`, json, body:  `{ work_key: '/works/OL65487W', borrow_schedule: DateTime.new, name: 'erka', phone_number: '0812323123' }`
