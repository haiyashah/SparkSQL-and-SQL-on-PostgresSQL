spark.sql("CREATE DATABASE IF NOT EXISTS News")
spark.sql("USE News")

spark.sql("""
CREATE TABLE IF NOT EXISTS google_newsFeed (
    id STRING,
    lastBuildDate STRING,
    title STRING,
    link STRING,
    pubDate STRING,
    description STRING,
    source STRING
)
USING PARQUET
""")

spark.sql("DESCRIBE News.google_newsFeed").show(truncate=False)