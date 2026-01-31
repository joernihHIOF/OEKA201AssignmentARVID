library(ellmer)
library(R6)
rp <- paste0(rprojroot::find_rstudio_root_file())
sf <- paste0(rp,"/R/ai.R")
source(sf)
fils <- "qmdrds/conv.qmd"
lmod <- c("openai/gpt-5.1",
          "groq/llama3-8b-8192",
          "google_gemini/gemini-2.5-flash",
          "anthropic/claude-sonnet-4-20250514",
          "perplexity/sonar")[1]
#####################################################################################################################################################
psys <- "
- Language for output: Norsk
- Format: Markdown
"
### New converstion
nysm <- T
pque <- "
Famous programmers from
"
fill <- "
- Norway
"
AIint(pque,fils=fils,fill=fill,init=nysm,psys=psys,lmod=lmod)

### Continue conversation
AIint("Include also Sweden",fils=fils,fill=fill,init=F,psys=psys,lmod=lmod)





