
copy (
	SELECT
		p.tconst, ordering, nconst, category, job,
		str_split(characters,',') as characters
	FROM read_csv_auto('title.principals.tsv.gz', delim='\t', quote='',header=True) as p
	INNER JOIN '../docs/titles.parquet' as t ON t.tconst = p.tconst
) to '../docs/principals.parquet' (FORMAT 'parquet', CODEC 'ZSTD')