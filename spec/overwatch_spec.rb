require 'spec_helper'

describe Overwatch do
  it 'has a version number' do
    expect(Overwatch::VERSION).not_to be nil
  end

  describe '.fetch_profile' do
    it 'returns the user profile' do
      expect(Overwatch.fetch_profile('pc', 'us', 'Hollowman-1205')["username"]).to eq("Hollowman")
    end
  end

  describe '.fetch_hero' do
    it "returns a user's hero stats" do
      expect(Overwatch.fetch_hero('pc', 'us', 'Hollowman-1205', 'Soldier76')).to include("HelixRocketsKills-MostinGame")
    end
  end

  describe '.fetch_cumulative_hero_data' do
    it "returns a user's cumulative hero stats" do
      expect(Overwatch.fetch_cumulative_hero_data('pc', 'us', 'Hollowman-1205')).to include("MeleeFinalBlows")
    end
  end

  describe '.fetch_achievements' do
    it "returns a user's cumulative hero stats" do
      expect(Overwatch.fetch_achievements('pc', 'us', 'Hollowman-1205')).to include("finishedAchievements")
    end
  end

  describe '.fetch_achievements' do
    it "returns a user's cumulative hero stats" do
      expect(Overwatch.fetch_patch_notes[0]).to include("title")
    end
  end
end
