# IMPORTING LIBRARIES
library(rvest)
library(dplyr)

# SCRAPPING WEBSITE
link <- "https://www.imdb.com/india/top-rated-tamil-movies/"

# ALLOWABILITY
#path = paths_allowed(link)

# HTML ELEMENTS FROM WEBSITE
web <- read_html(link)

# SEGREGATING NAME
name <- web %>% html_nodes(".titleColumn a") %>% html_text()

# VIEWING NAME LIST
View(name)
#segregating rating
rating <- web %>% html_nodes("strong") %>% html_text()

# VIEWING YEAR LIST
View(rating)

# SEGREGATING year
year <- web %>% html_nodes(".secondaryInfo") %>% html_text()

# VIEWING year LIST
View(year)

movies <- data.frame(name , rating ,year)

View(movies)

write.csv(mobiles,"my mobiles data.csv")