# Queries

Source code for this data set can be found on [Github: lloydtabb/imdb_fiddle](https://github.com/lloydtabb/imdb_fiddle)


### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="top_rated_by_genre"--> `Top Rated Movies by Genre`
For each movie genre show the top movies and the top people that work within those genres.

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="genre_crossproduct"--> `Genre Cross Product`
Movies can have multiple genres.  Looking at cross product of these is really interesting.  What are the most popular movies in each genre combination?  *Comedy+Western?* -> *"Blazing Saddles"*.  *Comedy+SciFi?* -> *"Back to the future"*.  Investigate all possible genre combinations.

### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="who_works_with_who"--> `Who Works with Who?`
Movies are made by teams of people.  Often these foks work together on multiple projects.  Let's examine the teams behind the popular names.  We'll start with Steven Speileberg.  Who does he work with and when?


### <!--malloy-query model="imdb-queries2.malloy" source="movies2" query="who_played"--> `Who Played Batman?`
We have characters we love.  Who has played *Batman* and what movies and when.  Let's take a look.
