
copy (
	SELECT
		p.tconst, ordering, nconst, category, job,
		str_split(
			regexp_replace(characters,'[\[\]\"]','','g'),
			',') as characters
	FROM read_csv_auto('title.principals.tsv.gz', delim='\t', quote='',header=True) as p
	INNER JOIN 'titles.parquet' as t ON t.tconst = p.tconst
) to 'principals.parquet' (FORMAT 'parquet', CODEC 'ZSTD')