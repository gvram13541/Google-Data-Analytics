### ggplot2 ###

library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

# plot comparing relationship between flipper_length and body_mass
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(color = "red")

# adding color to different species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

# adding shape and size, color to species
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species, size = species))

# adding color to over all plot and using alpha to differentiate between species based on transparancy
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species), color = "purple")

#changing geom to smooth
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#changing geom to line
ggplot(data = penguins) + 
  geom_line(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#plot with 2 geoms
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# drawing different lines for each type of species
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species, color = species))

#changing geom to jitter
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#making bar charts
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))

#stacked bar chart
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

# facet funtions
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_wrap(~species)

# use facet grid if you want show relation ship between vaiables
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex~species)