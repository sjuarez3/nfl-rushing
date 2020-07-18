require 'csv'
class Rushing < ApplicationRecord

  validates :td, numericality: { greater_than_or_equal_to: 0 }

  filterrific(
    available_filters: %i[sorted_by search_query]
  )

  scope :search_query, lambda { |query|
    return all if query.blank?
    where("player LIKE ?", "%#{query}%")
  }

  scope :sorted_by, lambda { |sort_option|
    return all if sort_option.blank?
    direction = /desc$/.match?(sort_option) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^player/
      order(player: direction)
    when /^td_/
      order(td: direction)
    when /^yds_/
      order(yds: direction)
    when /^lng_/
      order(lng: direction)
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }

  def self.options_for_sorted_by
    [
      ['Number (highest-lowest)', 'td_desc'],
      ['Number (lowest-highest)', 'td_asc'],
      ['Number (highest-lowest)', 'yds_desc'],
      ['Number (lowest-highest)', 'yds_asc'],
      ['Number (highest-lowest)', 'lng_desc'],
      ['Number (lowest-highest)', 'lng_asc'],
      ['Alphabetical (Z-A)', 'player_desc'],
      ['Alphabetical (A-Z)', 'player_asc']
    ]
  end

  def self.to_csv(rushings = [], options = {})
    CSV.generate(options) do |csv|
      csv << %w[Player Team Pos Att Att/G Yds Avg Yds/G TD Lng 1st 1st% 20+ 40+ FUM]
      rushings.each do |r|
        csv << [r.player, r.team, r.pos, r.att, r.att_per_game, r.yds, r.avg, r.yds_per_game, r.td, r.lng, r.first, r.first_percentage, r.twenty_plus, r.forty_plus, r.fum]
      end
    end
  end
end
