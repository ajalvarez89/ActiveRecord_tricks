# ActiveRecrod Tricks

This project has some tricks about ActiveRecord like a scopes, default_scope and some queries.

## Installation

ruby  -v: 2.6.1p33
rails -v: 6.0.2.2

```bash
bin/setup
```
or
```bash
bundle install
rails db:setup
```

## Usage
these are some of examples.

```ruby
active_statuses = Status.where(active: true).pluck(:id)
active_users = User.where(status_id: active_statuses).size

User.joins(:status).where(statuses: {active: true})
User.joins(:status).where(statuses: {id: Status.active.pluck(:id)})
User.joins(:status).merge(Status.active).size
User.active.joins(:messages).merge(Message.unread)
```
```ruby
* User.first.messages.first

* User.active.scoping do
  User.last
end

* User.active.unread_messages

* User.unread_messages
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)