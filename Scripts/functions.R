recode_binary <-
   function(data, variable, item, codingNo){
      data$item <- NA
      for(i in 1:nrow(data)){
         data$item[i] <-
            if(is.na(data$item[i]) == TRUE){
               ifelse(
                  data$variable[i] == codingNo && !is.na(data$variable[i]),
                  1, 
                  ifelse(
                     is.na(data$variable[i]), 
                     NA, 
                     0
                  )
               )
            }else{
               data$item[i]
            }
      }
      return(data)
   }

NAto0 <-
   function(target, source){
      for(i in 1:nrow(target)){
         target[i] <-
            if(
               is.null(target[i]) == TRUE | is.na(target[i]) == TRUE
               ){
               
                  ifelse(
                     source[i] == 0  && !is.na(source[i]),
                     0,
                     ifelse(
                        is.na(source[i]),
                        NA,
                        0
                     )
                  )
            }else{
               target[i]
            }
      }
      return(target)
   }
