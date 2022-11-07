# About the IMDb Dataset

IMDb makes data available for download via [their website](https://www.imdb.com/interfaces/). 
Used with permission. 
For personal / educational use only.

## What is this?

This data model is written in [Malloy](https://github.com/looker-open-source/malloy/), see the [Malloy source code](imdb-queries2.malloy?foo.txt), source for [this document](composer.md), the [configuration](composer.json), or the [repository](https://github.com/lloydtabb/imdb_fiddle/) on Github.

Source code for this data set can be found on [Github: lloydtabb/imdb_fiddle](https://github.com/lloydtabb/imdb_fiddle)


## Queries

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="top_rated_by_genre"--> `Top Rated Movies by Genre`
For each movie genre show the top movies and the top people that work within those genres.

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="genre_crossproduct"--> `Genre Cross Product`
Movies can have multiple genres.  Looking at cross product of these is really interesting.  What are the most popular movies in each genre combination?  *Comedy+Western?* -> *"Blazing Saddles"*.  *Comedy+SciFi?* -> *"Back to the future"*.  Investigate all possible genre combinations.

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="who_works_with_who"--> `Who Works with Who?`
Movies are made by teams of people.  Often these foks work together on multiple projects.  Let's examine the teams behind the popular names.  We'll start with Steven Speileberg.  Who does he work with and when?


### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="who_played"--> `Who Played Batman?`
We have characters we love.  Who has played *Batman* and what movies and when.  Let's take a look.

## Title Dashboards
Get full movie detail for different search terms

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="speilberg_dashboard"--> `Spielberg Movies`

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="batman_dashboard"--> `Batman Movies`

## About Malloy Composer

Composer is implemented using Malloy, DuckDB and WASM and runs completely
in your browser.  Javascript code is compled from here:

  https://github.com/malloydata/malloy-composer
  
 and distributed from here:
 
   https://github.com/lloydtabb/malloy_fiddle_dist
