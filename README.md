# About the IMDb Dataset

IMDb makes data available for download via [their website](https://www.imdb.com/interfaces/). 
Used with permission. 
For personal / educational use only.


## Tables

**People** - All of the people who worked on a title, ranging from actors and directors to composers and crew.

**Movies** - The `titles` table (aliased to `movies` in the model) has been filtered only to titles with > 10,000 ratings. Note: This model frequently uses `ratings.numVotes`, the number of votes the title has received. Where `ratings.averageRating` of course indicates how much people _liked_ a movie, `numVotes` is a better proxy for overall popularity of a title. 

**Principals** A mapping table between people and titles, principals links the cast/crew to the titles they worked on.


## Queries in `imdb.malloy`

**by_title** - title, start year, and number of ratings received, ordered by number of ratings.

**by_year** - the number of titles produced per year

**by_name** - for each person, the overall number of ratings on titles they were in, and the count of titles.

**by_job_category** - job category by number of titles

**by_genre** - for each genre, the count of titles, and percent of all titles that are this genre. Note that a film may have multiple genres.

**by_character** - number of titles for each character name

**by_year_and_genre** - for each year, the number of titles plus `by_genre` nested to show the breakdown by genre.

## Included Files

**imdb.malloy**: This is the base model. It names the three tables used, defines relationships between them, and declares measures, dimensions and queries to be used for analysis.

**imdb-queries.malloy**: Extends the base model to add a large variety of potentially interesting queries.

**imdb-queries2.malloy**: Extends the base model to add a much more curated set of potentially interesting queries.

# Building the parquet files

The original data is in TSV format. Run 'make' in this directory to download and create a small subset of the IMDB Data to explore.

# IMDB Fiddle

To run this in Fiddle goto https://lloydtabb.github.io/imdb_fiddle/


## About Malloy Fiddles

https://github.com/lloydtabb/malloy_fiddle_dist
