# Overwatch stats
This is a gem that can be used to retrieve information about Overwatch players by scraping Blizzard's website and returns the data as JSON. Here are some of the available commands:

```ruby
# Battle.net tags are case sensitive. Also the # must be replaced by a -

Overwatch.fetch_profile(system, region, battle_net_tag) # 'pc', 'us', 'Battlenettag-1245'

#Does not accept special characters(ex: Ĺucio = Lucio) and is case sensitive
Overwatch.fetch_hero(system, region, battle_net_tag, hero_name) # 'pc', 'us', 'Battlenettag-1245', 'Soldier76'

Overwatch.fetch_cumulative_hero_data(system, region, battle_net_tag) # 'pc', 'us', 'Battlenettag-1245'

Overwatch.fetch_achievements(system, region, battle_net_tag) # 'pc', 'us', 'Battlenettag-1245'

Overwatch.fetch_patch_notes # Returns all the patch notes
```

