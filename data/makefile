
SHELL = bash

all: principals.parquet titles.parquet names.parquet

# Rule to download the files
%.gz:
	curl https://datasets.imdbws.com/$(notdir $@) -o $@

titles.parquet: title.crew.tsv.gz title.ratings.tsv.gz title.basics.tsv.gz
	duckdb < build_titles.sql

principals.parquet:  title.principals.tsv.gz titles.parquet
	duckdb < build_principals.sql

names.parquet: name.basics.tsv.gz principals.parquet
	duckdb < build_names.sql

clean:
	rm -f title.principals.tsv.gz title.crew.tsv.gz title.ratings.tsv.gz title.basics.tsv.gz \
		name.basics.tsv.gz names.parquet titles.parquet principals.parquet