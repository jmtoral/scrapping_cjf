
library(rvest)
library(httr)
# Librerías

library(tidyverse)
library(stringr)

#guess_encoding(nombre)

### Scrapear

links <- tibble(circuito=1:32,
                link = paste0("http://cjfappssvr.cjf.gob.mx/DIrectorios/OJintcirc.aspx?cir=",1:32))



bind <- NULL
complete <- NULL

for(i in 1:32){
  
  url <- links$link[i]
  
  pr <- read_html(url, encoding = "UTF-8")
  
  CirID <- i
  
  nivel <- pr %>%
    html_nodes(".alert-ojlevel") %>%
    html_text()
  
  nombre <- pr %>%
    html_nodes(".alert-ojarea") %>%
    html_text()
  
  direccion <- pr %>%
    html_nodes(".alert-ojubica") %>%
    html_text()
  
  bind <- cbind(CirID, nivel, nombre, direccion)
  
  complete <- rbind(complete, bind) 
  
  cat(i, "... ")
  
}

base <- as.tibble(complete)


write.csv(complete, "base.csv")