library(tidyverse)

wc3_heroes <- read.table('data/wc3_heroes.txt', sep = '\t', header = TRUE, na.strings = c('-')) %>% 
  janitor::clean_names()

wc3_heroes %>% 
  select(armor_type)

wc3_heroes %>% 
  select(7)

wc3_heroes %>% 
  select(unit, race, hp)
wc3_heroes %>% 
  select(unit:armor_type, ground_attack:range)

wc3_heroes %>% 
  filter(armor_type == "Heavy")

wc3_heroes %>% 
  filter(armor_type == "Heavy" & race == 'Human')

# mutate 

wc3_heroes %>% 
  mutate(air_ground_equal = (damage == damage_1))

wc3_heroes %>% 
  group_by(race) %>% 
  summarise(mean = median(damage, na.rm = TRUE))


wc3_heroes %>% 
  group_by(race) %>% 
  summarise(mean = median(hp, na.rm = TRUE))



wc3_heroes %>% 
  group_by(race) %>% 
  summarise(median = median(damage_1, na.rm = TRUE))


wc3_heroes %>% 
  filter(armor_type == "Heavy" & race == 'Human') %>% 
  arrange(desc(damage))
