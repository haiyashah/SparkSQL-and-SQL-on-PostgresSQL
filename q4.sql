distinct_categories = spark.sql("""
    SELECT category, COUNT(*) as count
    FROM news_table
    GROUP BY category
    ORDER BY category
""")