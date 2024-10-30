library(httr2)

link <- "https://nextgenstats.nfl.com/api/leaders/time/sack?limit=50&season=2024&seasonType=REG"

fastest_sacks <- request(link) %>% 
  req_headers(
    "Host" = "nextgenstats.nfl.com", 
    "Referer" = "https://nextgenstats.nfl.com/stats/top-plays/fastest-sacks/2024/REG/all",
    "User-Agent" = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0"
  ) %>% 
  req_perform() %>% 
  resp_body_json()



# https://collegescorecard.ed.gov/data/api-documentation/
#  alOlYg5uXqZR312NFftsu5UUYldGDox03bcveNpR 

link <- "https://api.data.gov/ed/collegescorecard/v1/schools?api_key=alOlYg5uXqZR312NFftsu5UUYldGDox03bcveNpR&school.name=University%20of%20Notre%20Dame&page=0per_page=50"

score_card <- request(link) %>% 
  req_perform() %>% 
  resp_body_json()

score_card$results[[1]]$latest$student$demographics
