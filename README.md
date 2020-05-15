# UCLA-datafest-2020: Covid-19 (Con)textualized
Our team's project for the UCLA ASA Datafest 2020 Virtual Challenge. We decided to track possible effects of the pandemic on social media trends among select politicians.

## Prerequisites
To run the RMD's please install the following packages using this line of code:
```
install.pacakges(c('lubridate','zoo','av','gifsky','plotly','tidytext','stopwords','tidyverse','gganimate','hbrthemes','igraph','ggraph','wordcloud'))
```
Also, to test our code, please ensure the [Datasets](https://github.com/tylerwu2222/UCLA-datafest-2020/tree/master/Datasets) folder is in the same directory as the Rmd files since they make references to the datasets.

## Files

### Scraping
* [IGScraper.ipynb](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/IGScraper.ipynb): used to scrape the [politicians_ig.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/politicians_ig.csv) dataset from instagram's desktop website
* [IGFollowerCountScraper.ipynb](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/IGFollowerCountScraper.ipynb): used to scrape the [followers.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/followers.csv) dataset from [trackalytics.com](https://www.trackalytics.com/), (Note the site seems to be down as of May 15, 2020)

### Visualizations
* [Follower_Engagement.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Follower_Engagement.Rmd): used to create line charts showing follower engagement (slides 10 to 13)
* [Followers_BCR.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Followers_BCR.Rmd): used to create the animated bar chart for change in followers (slide 14)
* [Captions_Comments_BCR.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Captions_Comments_BCR.Rmd): used to create the animated bar charts for captions (slides 16 & 17)
* [Captions_Bigrams.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Captions_Bigrams.Rmd): used to create the animated bar chart for bigrams and the bigram network (slides 18 to 20)
* [Afinn_Sentiments.R](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Afinn_Sentiments.R): used to create the afinn sentiment graphs (slides 23 to 25)
* [Sentiment_Likes.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Sentiment_Likes.Rmd): used to create the scatter plot of sentiment vs engagement (slide 26)
* [Bing_NRC_Sentiments.Rmd](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Bing_NRC_Sentiments.Rmd): used to create the Bing and NRC sentiment animated and static graphs (slides 27 to 32)
* [Final Graphs.zip](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Final%20Graphs.zip): zip folder containing the final graphs of our presentation
* ([Bonus Graphs.zip](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Bonus%20Graphs.zip): zip folder containing a few bonus graphs that didn't make the final cut.)

## Datasets
* [politicians_ig.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/politicians_ig.csv): Our initial and primary dataset. Scraped from instagram, contains info for each politician like post url, datetime of post, caption, and top comments.
* [followers.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/followers.csv): Contains daily follower count and change in followers for each politician.
* [key_dates.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/key_dates.csv): Contains key dates in the Coronavirus timeline and a short excerpt on what happened on each date. Used for labeling in our animated graphs.
* other datasets in the folder were working datasets used by individual members in their graph creation process.

### Unused Datasets
* [trump_tweets.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/trump_tweets.csv): We initially had the idea to scrape twitter data, however, directly scraping Twitter proved to be too difficult with our current skillset and the Twitter API only went back a month in tweets. Therefore, we opted to go with Instagram data instead, but here are the datasets regardless.
* [tweets_about_trump.csv](https://github.com/tylerwu2222/UCLA-datafest-2020/blob/master/Datasets/tweets_about_trump.csv) ^

## Authors
* **Alena Abela** [Alena.abella@gmail.com](mailto:Alena.abella@gmail.com)
* **Emma Broback** [ebroback@g.ucla.edu](mailto:ebroback@g.ucla.edu)
* **Linus Jen** [linusscjen@g.ucla.edu](mailto:linusscjen@g.ucla.edu)
* **Josh Kong** []()
* **Tyler Wu** [tylerwu2222@g.ucla.edu](mailto:tylerwu2222@g.ucla.edu)
