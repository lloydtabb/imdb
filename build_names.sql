copy (
  SELECT
    n.nconst,
    n.primaryName,
    n.primaryProfession,
    case WHEN regexp_matches(birthYear,'[0-9]+') THEN CAST(birthYear as integer) END as birthYear,
    case WHEN regexp_matches(deathYear,'[0-9]+') THEN CAST(deathYear as integer) END as deathYear,
  FROM read_csv_auto('name.basics.tsv.gz', delim='\t', quote='',header=True, all_varchar=true) as n
  	INNER JOIN 'principals.parquet' as p ON n.nconst = p.nconst
) to 'names.parquet' (FORMAT 'parquet', CODEC 'ZSTD')