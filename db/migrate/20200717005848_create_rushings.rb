class CreateRushings < ActiveRecord::Migration[5.2]
  def change
    create_table :rushings do |t|
      t.string 'player'
      t.string 'team'
      t.string 'pos'
      t.float 'att_per_game'
      t.string 'att'
      t.string 'yds'
      t.float 'avg'
      t.float 'yds_per_game'
      t.integer 'td'
      t.string 'lng'
      t.integer 'first'
      t.string 'first_percentage'
      t.integer 'twenty_plus'
      t.integer 'forty_plus'
      t.integer 'fum'
      t.timestamps
    end
  end
end
