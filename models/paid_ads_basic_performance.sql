WITH ads_bing_all_data AS (
    SELECT *
    FROM {{ ref('stg_ads_bing_all_data') }}
),

ads_creative_facebook_all_data AS (
    SELECT *
    FROM {{ ref('stg_ads_creative_facebook_all_data') }}
),

ads_tiktok_ads_all_data AS (
    SELECT *
    FROM {{ ref('stg_ads_tiktok_ads_all_data') }}
),

promoted_tweets_twitter_all_data AS (
    SELECT *
    FROM {{ ref('stg_promoted_tweets_twitter_all_data') }}
),

paid_ads_basic_performance AS (
    SELECT *
    FROM ads_bing_all_data
    UNION ALL
    SELECT *
    FROM ads_creative_facebook_all_data
    UNION ALL
    SELECT *
    FROM ads_tiktok_ads_all_data
    UNION ALL
    SELECT *
    FROM promoted_tweets_twitter_all_data
)

SELECT * FROM paid_ads_basic_performance