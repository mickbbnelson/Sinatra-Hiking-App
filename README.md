#

Welcome to the Sinatra Hike Application!  This application will allow you to view trail information about different hiking locations posted by other application users.  Once you create an account, you will be able to record details about hikes that you went on for other users to view.  All accounts are secure so that each user can only edit details for the hikes that they posted.  

## Installation

Once you have cloned the repository, you will need to run "bundle install" to download all of the necessary gems the application is dependent on.

    bundle install

Then type "shotgun" into the terminal and type the following code into your web browser.

    localhost:9393

## Usage

Once the application is running, the user will be greeted by a welcome page where they will have the option to sign in or create an account.

New users will need to create an account with valid account information.

After an account has been created, the user will be redirected to the hikes homepage where all of they can view all hike submissions.

From here the user will have the option to view hike details or create their own hike submission.

Hike details include location, distance, terrain difficulty and description.

Hike details can be edited by the user that created the submission.

Once the user is finished, they will be able to log out of the application.

The user will be able to login to their account at any point with their login information.

## Development

After checking out the repo, run `bundle install` to install the necessary dependencies.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mickbbnelson/Sinatra-Hiking-App. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mickbbnelson/Sinatra-Hiking-App/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting with the Sinatra Hiking App project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mickbbnelson/Sinatra-Hiking-App/blob/master/CODE_OF_CONDUCT.md).
