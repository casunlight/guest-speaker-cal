# Guest Speaker Calendar Signup

## Development Setup

1. git clone https://github.com/jongrover/guest-speaker-cal.git
2. cd guest-speaker-cal
3. bundle install
4. rake db:seed
5. rails s
6. See guest facing calendar: http://localhost:3000/calendar
7. See admin calendar: http://localhost:3000/admin_calendar

## Production Deployment

1. heroku create
2. git push heroku
3. heroku run rake db:migrate
4. heroku run rake db:seed