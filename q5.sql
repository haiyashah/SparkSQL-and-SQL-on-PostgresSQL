nfl_check=final_df.filter(lower(col("title")).contains("nfl"))
nfl_check.select("title", "source", "pubDate", "category").show(truncate=False)