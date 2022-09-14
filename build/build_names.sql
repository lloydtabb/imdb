copy (
  SELECT
    n.*
  FROM read_csv_auto('name.basics.tsv.gz', delim='\t', quote='',header=True, all_varchar=true) as n
  	INNER JOIN '../docs/principals.parquet' as p ON n.nconst = p.nconst
) to '../docs/names.parquet' (FORMAT 'parquet', CODEC 'ZSTD')