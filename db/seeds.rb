# Seeds the database with the rushing records provided in rushings.json
# Run following command to execute this
# rake db:seed

rushings = JSON.parse(File.read(File.join(Rails.root, 'db', 'rushing.json')))
rushings.each do |rushing|
  begin
    Rushing.create!(
      player: rushing["Player"],
      team: rushing["Team"],
      pos: rushing["Pos"],
      att: rushing["Att"],
      att_per_game: rushing["Att/G"],
      yds: rushing["Yds"],
      avg: rushing["Avg"],
      yds_per_game: rushing["Yds/G"],
      td: rushing["TD"],
      lng: rushing["Lng"],
      first: rushing["1st"],
      first_percentage: rushing["1st%"],
      twenty_plus: rushing["20+"],
      forty_plus: rushing["40+"],
      fum: rushing["FUM"]
    )
  rescue ActiveRecord::RecordInvalid => e
    puts "Error creating rushing record with exception #{e.message}"
  end
end
