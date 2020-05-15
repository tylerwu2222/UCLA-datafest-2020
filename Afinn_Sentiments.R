# author: Emma Broback

library(dplyr)
library(tidytext)
library(textdata)
library(tidyr)
library(ggplot2)
library(wordcloud)
library(reshape2)

posts <- read_csv("Datasets/politicians_ig.csv")
posts$caption <- as.character(posts$caption)
captions <- posts %>% select(caption,datetime,views,likes, name) %>% as_tibble()
comments <- posts %>% select(comments,datetime,views,likes, name) %>% as_tibble()
captions <- captions %>% unnest_tokens(word, caption) # unnest captions into individual words
stop_words_es <- stopwords::stopwords("es", source = "stopwords-iso")
stop_words_fr <- stopwords::stopwords("fr", source = "stopwords-iso")
stop_words_en <- stopwords::stopwords("en", source = "stopwords-iso")
stop_words_latin <- c(stop_words_es,stop_words_fr,stop_words_en)
stop_words_latin <- data.frame("word" = stop_words_latin, lexicon = 'SMART',stringsAsFactors = F)
captions <- captions %>% anti_join(stop_words_latin) # remove articles like the, and, a..,
# do same for comments
comments <- comments %>% unnest_tokens(word, comments) # unnest captions into individual words
comments <- comments %>% anti_join(stop_words_latin) # remove articles like the, and, a...  
comments %>% count(word,sort=T)
# sentiment analysis on captions
nrc_joy <- get_sentiments("nrc") %>% filter(sentiment == "joy")
comments %>% filter(name == "Barack Obama") %>% inner_join(nrc_joy) %>% count(word, sort = TRUE)

politicians_sentiment <- captions %>%
  inner_join(get_sentiments("bing")) %>%
  count(name, index = datetime, sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(sentiment = positive - negative)

ggplot(politicians_sentiment, aes(index, sentiment, fill = name)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~name, ncol = 2, scales = "free_x")

bing_word_counts <- captions %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, sort = TRUE) %>%
  ungroup()

bing_word_counts %>%
  group_by(sentiment) %>%
  top_n(10) %>%
  ungroup() %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(word, n, fill = sentiment)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~sentiment, scales = "free_y") +
  labs(y = "Contribution to sentiment",
       x = NULL) +
  coord_flip()

# sentiment analysis on comments

# word clouds
captions %>%
  count(word) %>%
  with(wordcloud(word, n, max.words = 100))

comments %>%
  count(word) %>%
  with(wordcloud(word, n, max.words = 100))

captions %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, sort = TRUE) %>%
  acast(word ~ sentiment, value.var = "n", fill = 0) %>%
  comparison.cloud(max.words = 75)

# average sentiment by politician

words_by_politician <- captions %>%
  count(name, word, sort = TRUE) %>%
  ungroup()

politician_sentiments <- words_by_politician %>%
  inner_join(get_sentiments("afinn"), by = "word") %>%
  group_by(name) %>%
  summarize(value = sum(value * n) / sum(n))

politician_sentiments %>%
  mutate(name = reorder(name, value)) %>%
  ggplot(aes(name, value, fill = value > 0)) +
  geom_col(show.legend = FALSE) +
  coord_flip() +
  ylab("Average sentiment value")
