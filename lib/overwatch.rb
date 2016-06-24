require "overwatch/version"
require "httparty"

module Overwatch
  include HTTParty
  base_uri 'https://api.lootbox.eu'

  def self.fetch_profile(system, region, battle_net_tag)
    get("/#{system}/#{region}/#{battle_net_tag}/profile").parsed_response["data"]
  end

  def self.fetch_hero(system, region, battle_net_tag, hero_name)
    get("/#{system}/#{region}/#{battle_net_tag}/hero/#{hero_name}/").parsed_response
  end

  def self.fetch_cumulative_hero_data(system, region, battle_net_tag)
    get("/#{system}/#{region}/#{battle_net_tag}/allHeroes/").parsed_response
  end

  def self.fetch_achievements(system, region, battle_net_tag)
    JSON.parse(get("/#{system}/#{region}/#{battle_net_tag}/achievements"))
  end

  def self.fetch_patch_notes
    get('/patch_notes').parsed_response
  end
end
