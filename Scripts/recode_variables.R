######################################
###                                ###
### Data tidying script - 11/06/19 ###
###                                ###
######################################

## Dependencies

library(dplyr)
options(stringsAsFactors = FALSE)
library(here)

## Import data file

rawData <- 
    readRDS(
        here(
            "Data",
            "rawData.rds"
            )
    )
###############################
# Recode some of the variables #
# (This will take a while)     #
################################
## TODO: I should rewrite it using function().
## The reason why it was originally in this form is due to the way functions
## work in R, so this should theoretically be slightly faster than any *apply().
## Problem being, it's impossible to debug, given the length and script running
## time.
## Possible alternatives: rewrite it in C++ and compile it, then call it
## with Rcpp, OR write it in Julia, OR shell script with grep/awk.

## Talkative

                                        # Var 1

rawData$Talkative <- NA
  for(i in 1:nrow(rawData)){
      rawData$Talkative[i] <-
          if(is.na(rawData$Talkative[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 1 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 1

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 1

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 1

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 1

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 1

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 1

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$Talkative[i] <-
        if(is.na(rawData$Talkative[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 1

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Talkative[i]
              }
}

## Restless - 2

                                        # Var 1

rawData$Restless <- NA
  for(i in 1:nrow(rawData)){
      rawData$Restless[i] <-
          if(is.na(rawData$Restless[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 2 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 2

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 2

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 2

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 2

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 2

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 2

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$Restless[i] <-
        if(is.na(rawData$Restless[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 2

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$Restless[i]
              }
  }

## FastThoughts - 3

                                        # Var 1

rawData$FastThoughts <- NA
  for(i in 1:nrow(rawData)){
      rawData$FastThoughts[i] <-
          if(is.na(rawData$FastThoughts[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 3 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 3

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 3

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 3

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 3

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 3

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 3

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$FastThoughts[i] <-
        if(is.na(rawData$FastThoughts[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 3

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$FastThoughts[i]
              }
  }

## LessSleepNeed - 5

                                        # Var 1

rawData$LessSleepNeed <- NA
  for(i in 1:nrow(rawData)){
      rawData$LessSleepNeed[i] <-
          if(is.na(rawData$LessSleepNeed[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 5 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 5

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 5

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 5

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 3

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 5

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 5

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$LessSleepNeed[i] <-
        if(is.na(rawData$LessSleepNeed[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 5

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$LessSleepNeed[i]
              }
  }



## MoreIdeas - 6

                                        # Var 1

rawData$MoreIdeas <- NA
  for(i in 1:nrow(rawData)){
      rawData$MoreIdeas[i] <-
          if(is.na(rawData$MoreIdeas[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 6 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 6

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 6

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 6

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 6

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 6

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 6

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$MoreIdeas[i] <-
        if(is.na(rawData$MoreIdeas[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 6

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreIdeas[i]
              }
  }


## EasilyDistracted - 7

                                        # Var 1

rawData$EasilyDistracted <- NA
  for(i in 1:nrow(rawData)){
      rawData$EasilyDistracted[i] <-
          if(is.na(rawData$EasilyDistracted[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 6 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 7

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 7

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 7

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 7

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 7

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 7

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$EasilyDistracted[i] <-
        if(is.na(rawData$EasilyDistracted[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 7

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$EasilyDistracted[i]
              }
  }

## MoreConfident - 8

                                        # Var 1

rawData$MoreConfident <- NA
  for(i in 1:nrow(rawData)){
      rawData$MoreConfident[i] <-
          if(is.na(rawData$MoreConfident[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 6 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 8

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 8

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 8

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 8

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 8

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 8

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$MoreConfident[i] <-
        if(is.na(rawData$MoreConfident[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 8

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreConfident[i]
              }
}


## MoreActive - 9

                                        # Var 1

rawData$MoreActive <- NA
  for(i in 1:nrow(rawData)){
      rawData$MoreActive[i] <-
          if(is.na(rawData$MoreActive[i]) == TRUE){
                 ifelse(
                     rawData$ManiaManifestation01[i] == 6 && !is.na(rawData$ManiaManifestation01[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation01[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }

                                        # Var 2

for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation02[i] == 9

                &&

                !is.na(rawData$ManiaManifestation02[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation02[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }
                                        # Var 3
for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation03[i] == 9

                &&

                !is.na(rawData$ManiaManifestation03[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation03[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }

                                        # Var 4

for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation04[i] == 9

                &&

                !is.na(rawData$ManiaManifestation04[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation04[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }

                                        # Var 5
for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation05[i] == 9

                &&

                !is.na(rawData$ManiaManifestation05[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation05[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
}

                                        # Var 6
for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation06[i] == 9

                &&

                !is.na(rawData$ManiaManifestation06[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation06[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }

                                        # Var 7
for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation07[i] == 9

                &&

                !is.na(rawData$ManiaManifestation07[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation07[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
  }

                                        # Var 8
for(i in 1:nrow(rawData)){
    rawData$MoreActive[i] <-
        if(is.na(rawData$MoreActive[i]) == TRUE){
            ifelse(
                rawData$ManiaManifestation08[i] == 9

                &&

                !is.na(rawData$ManiaManifestation08[i]),
                     1, 
                     ifelse(
                         is.na(rawData$ManiaManifestation08[i]), 
                         NA, 
                         0
                  )
                 )
          }else{
              rawData$MoreActive[i]
              }
}


                                        # Save rawData! Just in case
saveRDS(
        rawData,
        here(
            "Data",
            "rawDataWithMania.rds"
        )
    )

#### SOME MORE RECODING
## Removing NAs due to conditional statements

## Making sure everything is dbl

#cols <- variable.names(rawData)
#rawData[cols] <- lapply(rawData[cols], as.double)

## SuicideEver

rawData$SuicideEver[is.na(rawData$SuicideEver)] <-
  rawData$SelfHarmEver[is.na(rawData$SuicideEver)]

## WorriedMostDaysWorstEp

rawData$WorriedMostDaysWorstEp[is.na(rawData$WorriedMostDaysWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$WorriedMostDaysWorstEp)]

#rawData$WorriedMostDaysWorstEp[is.na(rawData$WorriedMostDaysWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$WorriedMostDaysWorstEp)]

                          # Not feasible, items are differently coded
                          # To implement later on to refine analyses

## MuscularTensionWorstEP

rawData$MuscularTensionWorstEP[is.na(rawData$MuscularTensionWorstEP)] <-
    rawData$WorriedMoreEver[is.na(rawData$MuscularTensionWorstEP)]

#rawData$MuscularTensionWorstEP[is.na(rawData$MuscularTensionWorstEP)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$MuscularTensionWorstEP)]

## StrongerWorryingWorstEp

rawData$StrongerWorryingWorstEp[is.na(rawData$StrongerWorryingWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$StrongerWorryingWorstEp)]

#rawData$StrongerWorryingWorstEp[is.na(rawData$StrongerWorryingWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$StrongerWorryingWorstEp)]

## RestlessnessAnxWorstEp

rawData$RestlessnessAnxWorstEp[is.na(rawData$RestlessnessAnxWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$RestlessnessAnxWorstEp)]

#rawData$RestlessnessAnxWorstEp[is.na(rawData$RestlessnessAnxWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$RestlessnessAnxWorstEp)]

## MultipleWorriesWorstEp

rawData$MultipleWorriesWorstEp[is.na(rawData$MultipleWorriesWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$MultipleWorriesWorstEp)]

#rawData$MultipleWorriesWorstEp[is.na(rawData$MultipleWorriesWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$MultipleWorriesWorstEp)]

## IrritableAnxWorstEp

rawData$IrritableAnxWorstEp[is.na(rawData$IrritableAnxWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$IrritableAnxWorstEp)]

#rawData$IrritableAnxWorstEp[is.na(rawData$IrritableAnxWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$IrritableAnxWorstEp)]

## OnEdgeWorstEp

rawData$OnEdgeWorstEp[is.na(rawData$OnEdgeWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$OnEdgeWorstEp)]

#rawData$OnEdgeWorstEp[is.na(rawData$OnEdgeWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$OnEdgeWorstEp)]

## SleepIssuesAnxWorstEp

rawData$SleepIssuesAnxWorstEp[is.na(rawData$SleepIssuesAnxWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$SleepIssuesAnxWorstEp)]

#rawData$SleepIssuesAnxWorstEp[is.na(rawData$SleepIssuesAnxWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$SleepIssuesAnxWorstEp)]

## EasilyTiredAnxWorstEp

rawData$EasilyTiredAnxWorstEp[is.na(rawData$EasilyTiredAnxWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$EasilyTiredAnxWorstEp)]

#rawData$EasilyTiredAnxWorstEp[is.na(rawData$EasilyTiredAnxWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$EasilyTiredAnxWorstEp)]

## NonstopWorryWorstEp

rawData$NonstopWorryWorstEp[is.na(rawData$NonstopWorryWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$NonstopWorryWorstEp)]

#rawData$NonstopWorryWorstEp[is.na(rawData$NonstopWorryWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$NonstopWorryWorstEp)]

## ConcentrationIssuesAnxWorstEp

rawData$ConcentrationIssuesAnxWorstEp[is.na(rawData$ConcentrationIssuesAnxWorstEp)] <-
    rawData$WorriedMoreEver[is.na(rawData$ConcentrationIssuesAnxWorstEp)]

#rawData$ConcentrationIssuesAnxWorstEp[is.na(rawData$ConcentrationIssuesAnxWorstEp)] <-
#    rawData$LongestPeriodAnxious[is.na(rawData$ConcentrationIssuesAnxWorstEp)]

## StressTraumaDep

rawData$StressTraumaDep[is.na(rawData$StressTraumaDep)] <-
    rawData$SadnessDepressEver[is.na(rawData$StressTraumaDep)]

rawData$StressTraumaDep[is.na(rawData$StressTraumaDep)] <-
    rawData$LossInterestEver[is.na(rawData$StressTraumaDep)]

## WeightChangeWorstEp

rawData$WeightChangeWorstEp[is.na(rawData$WeightChangeWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$WeightChangeWorstEp)]

rawData$WeightChangeWorstEp[is.na(rawData$WeightChangeWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$WeightChangeWorstEp)]

## ConcentrationIssuesAnxWorstEp

rawData$ConcentrationIssuesAnxWorstEp[is.na(rawData$ConcentrationIssuesAnxWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$ConcentrationIssuesAnxWorstEp)]

rawData$ConcentrationIssuesAnxWorstEp[is.na(rawData$ConcentrationIssuesAnxWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$ConcentrationIssuesAnxWorstEp)]

## WakingTooEarlyDepWorstEp

rawData$WakingTooEarlyDepWorstEp[is.na(rawData$WakingTooEarlyDepWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$WakingTooEarlyDepWorstEp)]

rawData$WakingTooEarlyDepWorstEp[is.na(rawData$WakingTooEarlyDepWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$WakingTooEarlyDepWorstEp)]

## FallingAsleepWorstEp

rawData$FallingAsleepWorstEp[is.na(rawData$FallingAsleepWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$FallingAsleepWorstEp)]

rawData$FallingAsleepWorstEp[is.na(rawData$FallingAsleepWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$FallingAsleepWorstEp)]

## DeathThoughtsWorstEp

rawData$DeathThoughtsWorstEp[is.na(rawData$DeathThoughtsWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$DeathThoughtsWorstEp)]

rawData$DeathThoughtsWorstEp[is.na(rawData$DeathThoughtsWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$DeathThoughtsWorstEp)]

## OversleepingWorstEp

rawData$OversleepingWorstEp[is.na(rawData$OversleepingWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$OversleepingWorstEp)]

rawData$OversleepingWorstEp[is.na(rawData$OversleepingWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$OversleepingWorstEp)]

## WorthlessnessWorstEp

rawData$WorthlessnessWorstEp[is.na(rawData$WorthlessnessWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$WorthlessnessWorstEp)]

rawData$WorthlessnessWorstEp[is.na(rawData$WorthlessnessWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$WorthlessnessWorstEp)]

## TirednessWorstEp

rawData$TirednessWorstEp[is.na(rawData$TirednessWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$TirednessWorstEp)]

rawData$TirednessWorstEp[is.na(rawData$TirednessWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$TirednessWorstEp)]

## ConcentrationIssuesWorstEp

rawData$ConcentrationIssuesWorstEp[is.na(rawData$ConcentrationIssuesWorstEp)] <-
    rawData$SadnessDepressEver[is.na(rawData$ConcentrationIssuesWorstEp)]

rawData$ConcentrationIssuesWorstEp[is.na(rawData$ConcentrationIssuesWorstEp)] <-
    rawData$LossInterestEver[is.na(rawData$ConcentrationIssuesWorstEp)]

## SleepChangeDep

rawData$SleepChangeDep[is.na(rawData$SleepChangeDep)] <-
    rawData$SadnessDepressEver[is.na(rawData$SleepChangeDep)]

rawData$SleepChangeDep[is.na(rawData$SleepChangeDep)] <-
    rawData$LossInterestEver[is.na(rawData$SleepChangeDep)]


## AddictedPrescribedEver

rawData$AddictedPrescribedEver[is.na(rawData$AddictedPrescribedEver)] <-
  rawData$AddictedAnyEver[is.na(rawData$AddictedPrescribedEver)]

## AddictedIllicitEver

rawData$AddictedIllicitEver[is.na(rawData$AddictedIllicitEver)] <-
  rawData$AddictedAnyEver[is.na(rawData$AddictedIllicitEver)]

## AddictedAlcoholEver

rawData$AddictedAlcoholEver[is.na(rawData$AddictedAlcoholEver)] <-
  rawData$AddictedAnyEver[is.na(rawData$AddictedAlcoholEver)]


## AddictionAlcoholPhysEver

rawData$AddictionAlcoholPhysEver[is.na(rawData$AddictionAlcoholPhysEver)] <-
    rawData$AddictedAlcoholEver[is.na(rawData$AddictionAlcoholPhysEver)]

## AddictedBehavEver

rawData$AddictedBehavEver[is.na(rawData$AddictedBehavEver)] <-
    rawData$AddictedAnyEver[is.na(rawData$AddictedBehavEver)]

## MoreActive

rawData$MoreActive[is.na(rawData$MoreActive)] <-
    rawData$ManiaEver[is.na(rawData$MoreActive)]

## MoreConfident

rawData$MoreConfident[is.na(rawData$MoreConfident)] <-
    rawData$ManiaEver[is.na(rawData$MoreConfident)]

## EasilyDistracted

rawData$EasilyDistracted[is.na(rawData$EasilyDistracted)] <-
    rawData$ManiaEver[is.na(rawData$EasilyDistracted)]

## MoreIdeas

rawData$MoreIdeas[is.na(rawData$MoreIdeas)] <-
    rawData$ManiaEver[is.na(rawData$MoreIdeas)]

## EasilyDistracted

rawData$EasilyDistracted[is.na(rawData$EasilyDistracted)] <-
    rawData$ManiaEver[is.na(rawData$EasilyDistracted)]

## LessSleepNeed

rawData$LessSleepNeed[is.na(rawData$LessSleepNeed)] <-
    rawData$ManiaEver[is.na(rawData$LessSleepNeed)]

## FastThoughts

rawData$FastThoughts[is.na(rawData$FastThoughts)] <-
    rawData$ManiaEver[is.na(rawData$FastThoughts)]

## Restless

rawData$Restless[is.na(rawData$Restless)] <-
    rawData$ManiaEver[is.na(rawData$Restless)]

##  Talkative

rawData$Talkative[is.na(rawData$Talkative)] <-
    rawData$ManiaEver[is.na(rawData$Talkative)]


## Separate network data
## Import variables list


networkVariablesList <- c(
    scan(
        here(
            "Variables",
            "Variables_model.txt"
             ),
        "character"
        )
)

## Select variables & recode negative outcomes
tidyData <- rawData

networkSet <- tidyData[,networkVariablesList]

## Some variables are coded using coding 504: this means that
## they haven't got 0 = "no symptoms". Annoying, innit?

## Here's the list:

var504 <- c(
    scan(
        here(
            "Variables",
            "Variables_504.txt"
             ),
        "character"
        )
)

## We just subtract 1, since they are all from 1 to 4
## (In case you were wondering: NA - 1 = NA)

networkSet[,var504] <- networkSet[,var504] - 1

# Dichotomisation

networkSet_bin <- networkSet
networkSet_bin[networkSet_bin > 1] <- 1

## Save first batch of results

saveRDS(
        tidyData,
        here(
            "Data",
            "tidyData.rds"
        )
    )

saveRDS(
        networkSet_bin,
        here(
            "Data",
            "networkSet_bin.rds"
        )
)


saveRDS(
        networkSet,
        here(
            "Data",
            "networkSet_cont.rds"
        )
)


## Excluding cases totally missing + saving it

## Dichotomised

networkSet_bin_nofullmissing <- 
  networkSet_bin[
    rowSums(
      is.na(
        networkSet_bin[ ,0:ncol(networkSet_bin)
                        ]
        )
      ) < ncol(networkSet_bin), 
    ]

saveRDS(
        networkSet_bin_nofullmissing,
        here(
            "Data",
            "networkSet_bin_nofullmissing.rds"
        )
    )


## Categorical

networkSet_cont_nofullmissing <- 
  networkSet[
    rowSums(
      is.na(
        networkSet[ ,0:ncol(networkSet)
                        ]
        )
      ) < ncol(networkSet), 
    ]

saveRDS(
        networkSet_cont_nofullmissing,
        here(
            "Data",
            "networkSet_cont_nofullmissing.rds"
        )
    )


#######
# EOF #
#######
