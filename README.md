# README 

[Link for Questions](https://github.com/jgscott/STA380/tree/master/exercises)

# ----------------------------------------------------
## Probability practice


### Solution 

- [Probability Solution](0.%20Probability/Improved_Probability.ipynb)


# ----------------------------------------------------
## Wrangling the Billboard Top 100

[billboard.csv](1.%20Wrangling%20the%20Billboard/billboard.csv)

### Solution

- [Wrangling the Billboard Top 100](1.%20Wrangling%20the%20Billboard/Wrangling%20the%20Billboard.ipynb)



# ----------------------------------------------------
## Visual Story telling Part 1: Green Buildings

[greenbuildings.csv](2.%20Visual%20story%20telling%20part%201%20green%20buildings/greenbuildings.csv)

### Solution

- [Green Building](2.%20Visual%20story%20telling%20part%201%20green%20buildings/GreenBuildings.ipynb)



# ----------------------------------------------------
## Visual story telling part 2: Capital Metro data

[capmetro_UT.csv](3.%20Visual%20story%20telling%20part%202%20Capital%20Metro%20data/capmetro_UT.csv)

### Solution

- [Capital Metro](3.%20Visual%20story%20telling%20part%202%20Capital%20Metro%20data/CapitalUT.ipynb)



# ----------------------------------------------------
## Clustering and Dimensionality Reduction

[wine.csv](4.%20Clustering%20and%20dimensionality%20reduction/wine.csv)

### Solution

- [Clustering and Dimensionality Reduction](4.%20Clustering%20and%20dimensionality%20reduction/Clustering%20and%20Dimensionality.ipynb)



# ----------------------------------------------------
## Market Segmentation

[social_marketing.csv](5.%20Market%20segmentation/social_marketing.csv)


### Solution

- [Market Segmentation](5.%20Market%20segmentation/MarketSegmentation.ipynb)



# ----------------------------------------------------
## The Reuters Corpus

Revisit the Reuters C50 text corpus that we briefly explored in class.  Your task is simple: tell an interesting story, anchored in some analytical tools we have learned in this class, using this data.  For example:  
- you could cluster authors or documents and tell a story about what you find.    
- you could look for common factors using PCA.    
- you could train a predictive model and assess its accuracy, constructing features for each document that maximize performance.  
- you could do anything else that strikes you as interesting with this data.  

Describe clearly what question you are trying to answer, what models you are using, how you pre-processed the data, and so forth.  Make sure you include at least _one_ really interesting plot (although more than one might be necessary, depending on your question and approach.)  

Format your write-up in the following sections, some of which might be quite short:   
- Question: What question(s) are you trying to answer?
- Approach: What approach/statistical tool did you use to answer the questions?
- Results: What evidence/results did your approach provide to answer the questions? (E.g. any numbers, tables, figures as appropriate.)
- Conclusion: What are your conclusions about your questions? Provide a written interpretation of your results, understandable to stakeholders who might plausibly take an interest in this data set.

Regarding the data itself: In the C50train directory, you have 50 articles from each of 50 different authors (one author per directory).  Then in the C50test directory, you have another 50 articles from each of those same 50 authors (again, one author per directory).  This train/test split is obviously intended for building predictive models, but to repeat, you need not do that on this problem.  You can tell any story you want using any methods you want.  Just make it compelling!  

Note: if you try to build a predictive model, you will need to figure out a way to deal with words in the test set that you never saw in the training set.  This is a nontrivial aspect of the modeling exercise.  (E.g. you might simply ignore those new words.)  


This question will be graded according to three criteria:    
  1. the overall "interesting-ness" of your question and analysis.   
  2. the clarity of your description.  We will be asking ourselves: could your analysis be reproduced by a competent data scientist based on what you've said?  (That's good.)  Or would that person have to wade into the code in order to understand what, precisely, you've done?  (That's bad.)  
  3. technical correctness (i.e. did you make any mistakes in execution or interpretation?)  

### Solution

- [The Reuters Corpus](6.%20The%20Reuters%20corpus/ReutersCorpus.ipynb)


# ----------------------------------------------------
## Association Rule Mining

Revisit the notes on association rule mining and the R example on music playlists: [playlists.R](7.%20Association%20rule%20mining/playlists.R) and [playlists.csv](7.%20Association%20rule%20mining/playlists.csv).  Then use the data on grocery purchases in [groceries.txt](7.%20Association%20rule%20mining/groceries.txt) and find some interesting association rules for these shopping baskets.  The data file is a list of shopping baskets: one person's basket for each row, with multiple items per row separated by commas.  Pick your own thresholds for lift and confidence; just be clear what these thresholds are and say why you picked them.  Do your discovered item sets make sense?  Present your discoveries in an interesting and visually appealing way.  
 

Notes: 
- This is an exercise in visual and numerical story-telling.  Do be clear in your description of what you've done, but keep the focus on the data, the figures, and the insights your analysis has drawn from the data, rather than technical details.  
- The data file is a list of baskets: one row per basket, with multiple items per row separated by commas.  You'll have to cobble together your own code for processing this into the format expected by the "arules" package.  This is not intrinsically all that hard, but it is the kind of data-wrangling wrinkle you'll encounter frequently on real problems, where your software package expects data in one format and the data comes in a different format.  Figuring out how to bridge that gap is part of the assignment, and so we won't be giving tips on this front.  

### Solution

 - [Association Rule Mining](7.%20Association%20rule%20mining/AssociationRuleMining.ipynb)


# ----------------------------------------------------
## Image classification with neural networks

[data/EuroSAT_RGB](https://github.com/jgscott/STA380/tree/master/data/EuroSAT_RGB) 

or

[EuroSAT_RGB](8.%20Image%20classification%20with%20neural%20networks/EuroSAT_RGB/)


### Solution

 - [Image classification with neural networks](8.%20Image%20classification%20with%20neural%20networks/Image%20classification%20with%20neural%20networks.ipynb)
