# About the IMDb Dataset

IMDb makes data available for download via [their website](https://www.imdb.com/interfaces/). 
Used with permission. 
For personal / educational use only.

## What is this?

[Malloy Composer](https://github.com/malloydata/malloy-composer) is an open source tool for viewing and exploring data sets.  Data models are created in the  [Malloy](https://github.com/malloydata/malloy/) language.  Data can be served from a simple webserver or from a SQL database.

See the **150 lines of [Malloy source code](https://github.com/lloydtabb/imdb_fiddle/blob/main/imdb-queries2.malloy)** for this data set, source for [this document](https://github.com/lloydtabb/imdb_fiddle/blob/main/composer.md), the [configuration](https://github.com/lloydtabb/imdb_fiddle/blob/main/composer.json).

## Queries

<!-- malloy-query  
  name="Top Rated Movies and Individuals by Genre"
  description="For each movie genre show the top movies and the top people that work within those genres." 
  model="imdb-queries2.malloy" 
-->
```malloy
query: movies2-> {
  group_by: genre is genres.value
  aggregate: total_ratings
  nest: top_titles is by_title + { limit: 5 } 
  nest: top_names is by_name + { limit: 5 }
}
``` 

<!-- malloy-query  
  name="Genre Cross Products - Comedy + ??"
  description="Movies can have multiple genres.  Looking at cross product of these is really interesting.  What are the most popular movies in each genre combination?"
  model="imdb-queries2.malloy"
-->
```malloy
query: movies2->genre_crossproduct
```

<!-- malloy-query  
  name="Who Works With Who?"
  description="Movies are made by teams of people.  Often these foks work together on multiple projects.  Let's examine the teams behind the popular names.  We'll start with Steven Speileberg.  Who does he work with and when?" 
  model="imdb-queries2.malloy"
-->
```malloy
query: movies2-> who_works_with_who
```

<!-- malloy-query  
  name="Who Played Batman?"
  description="We have characters we love.  Who has played *Batman* and what movies and when.  Let's take a look." 
  model="imdb-queries2.malloy"
-->
```malloy
query: movies2-> who_played
```

## Title Dashboards
Get full movie detail for different search terms

<!-- malloy-query  
  name="Spielberg Movies"
  model="imdb-queries2.malloy"
  renderer="dashboard"
-->
```malloy
  query: movies2-> titles_dashboard + {
    where: search.primaryName = 'Steven Spielberg'
  }
```

<!-- malloy-query  
  name="Batman Movies"
  model="imdb-queries2.malloy"
  renderer="dashboard"
-->
```malloy
  query: movies2 -> titles_dashboard + {
    where: search.character = 'Batman'
  }
```

## Explore Data Directly

<!-- malloy-source  
  title="IMDB"
  model="imdb-queries2.malloy"
  source="movies"
  description="Explore the full IMDB Model"
-->

<!-- malloy-source  
  title="Simplified IMDB"
  model="imdb-simple.malloy"
  source="movies"
  description="Explore the simplified IMDB Model"
-->

## More About Malloy Composer

This composer is implemented using Malloy, DuckDB and WASM and runs completely in your browser.  Javascript code is compled from here:

  https://github.com/malloydata/malloy-composer
  
 and distributed from here:
 
   https://github.com/lloydtabb/malloy_fiddle_dist
