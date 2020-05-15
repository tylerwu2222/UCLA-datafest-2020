# UCLA-datafest-2020: Covid-19 (Con)textualized
Our team's project for the UCLA ASA Datafest 2020 Virtual Challenge. We decided to track possible effects of the pandemic on social media trends among select politicians.

## Prerequisites
To run the RMD's please install the following packages using this line of code:
```
install.pacakges(c('lubridate','zoo','av','gifsky','plotly','tidytext','stopwords','tidyverse','gganimate','hbrthemes','igraph','ggraph'))
```
Also, to test our code, please unsure the Datasets folder is in the same directory as the Rmd files since they make references to the datasets.

## Files
* [Bing_NRC_Sentiments.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Bing_NRC_Sentiments.Rmd): used to create the Bing and NRC sentiment animated and static graphs (slides 26 to 31)
* [Captions_Bigrams.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Captions_Bigrams.Rmd): used to create the animated bar chart for bigrams and the bigram network (slides 18 to 20)
* [Captions_Comments_BCR.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Captions_Comments_BCR.Rmd): used to create the animated bar charts for captions (slides 16 & 17)
* [Followers_BCR.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Followers_BCR.Rmd): used to create the animated bar chart for change in followers (slide 14)

## Datasets
* [politicians_ig.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/politicians_ig.csv): Our initial and primary dataset. Scraped from instagram, contains info like post url, datetime of post, caption, and top comments.
* [key_dates.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/key_dates.csv): A datasets containing key dates in the Coronavirus timeline and a short excerpt on what happened on each date. Used for labeling in our animated graphs.

### Unused Datasets
* [trump_tweets.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/trump_tweets.csv): We initially had the idea to scrape twitter data, however, directly scraping Twitter proved to difficult with our current skillset and the Twitter API only went back a month in tweets. Therefore, we opted to go with instagram data instead, but here are the datasets regardless.
* [tweets_about_trump.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/tweets_about_trump.csv) ^

## Authors
* **Alena Abela**
* **Emma Broback**
* **Linus Jen**
* **Josh Kong**
* **Tyler Wu**
