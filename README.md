# NFL Rushing Table
Ruby on Rails app that displays football player's rushing statistics.

All records have the following attributes:
* `Player` (Player's name)
* `Team` (Player's team abbreviation)
* `Pos` (Player's postion)
* `Att/G` (Rushing Attempts Per Game Average)
* `Att` (Rushing Attempts)
* `Yds` (Total Rushing Yards)
* `Avg` (Rushing Average Yards Per Attempt)
* `Yds/G` (Rushing Yards Per Game)
* `TD` (Total Rushing Touchdowns)
* `Lng` (Longest Rush -- a `T` represents a touchdown occurred)
* `1st` (Rushing First Downs)
* `1st%` (Rushing First Down Percentage)
* `20+` (Rushing 20+ Yards Each)
* `40+` (Rushing 40+ Yards Each)
* `FUM` (Rushing Fumbles)

In this repo is a sample data file [`rushing.json`](/rushing.json).
The table is sortable by players via _Total Rushing Yards_, _Longest Rush_ and _Total Rushing Touchdowns_ and the player's name.

The data is also available to download as sorted data in CSV format, as well as a filtered subset.
    
### Installation
You will need the following requirements to run this:
- Ruby Version: 2.6.2
- Rails Version: 5.2.4 or >= 5.2.4.3

1. Clone this repo to your machine
2. Go into cloned directory and run the following command to install bundler if you do not have it: `gem install bundler`
3. Run the following command to install the gems required: `bundle`
4. Run the following commands to initialize your local database with the data provided from the `rushing.json` file: `rails db:reset` 
5. Run the following command to start up your local server with the app: `rails s`
6. Now open a browser and navigate to http://localhost:3000 to see the table of rushing values!
