
SHELL = bash

all: ../docs/principals.parquet ../docs/titles.parquet ../docs/names.parquet

# Rule to download the files
%.gz:
	curl https://datasets.imdbws.com/$(notdir $@) -o $@

../docs/titles.parquet: title.crew.tsv.gz title.ratings.tsv.gz title.basics.tsv.gz
	duckdb < build_titles.sql

../docs/principals.parquet:  title.principals.tsv.gz ../docs/titles.parquet
	duckdb < build_principals.sql

../docs/names.parquet: name.basics.tsv.gz ../docs/principals.parquet
	duckdb < build_names.sql

clean:
	rm -f title.principals.tsv.gz title.crew.tsv.gz title.ratings.tsv.gz title.basics.tsv.gz \
		../docs/name.basics.tsv.gz ../docs/names.parquet ../docs/titles.parquet ../docs/principals.parquet