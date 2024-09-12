WITH stg_promoted_tweets_twitter_all_data AS (
    SELECT 
        CAST('' AS string) AS ad_id, -- string (default value '')
        CAST(0 AS int64) AS add_to_cart, -- int64 (default value 0)
        CAST('' AS string) AS adset_id, -- string (default value '')
        CAST(campaign_id AS string) AS campaign_id, -- string
        CAST(channel AS string) AS channel, -- string
        CAST(clicks AS int64) AS clicks, -- int64
        CAST(comments AS int64) AS comments, -- int64
        CAST('' AS string) AS creative_id, -- string (default value '')
        CAST(date AS date) AS date, -- date
        CAST(engagements AS int64) AS engagements, -- int64
        CAST(impressions AS int64) AS impressions, -- int64
        CAST(0 AS int64) AS installs, -- int64 (default value 0)
        CAST(likes AS int64) AS likes, -- int64
        CAST(url_clicks AS int64) AS link_clicks, -- int64
        CAST('' AS string) AS placement_id, -- string (default value '')
        CAST(0 AS int64) AS post_click_conversions, -- int64 (default value 0)
        CAST(0 AS int64) AS post_view_conversions, -- int64 (default value 0)
        CAST(0 AS int64) AS posts, -- int64 (default value 0)
        CAST(0 AS int64) AS purchase, -- int64 (default value 0)
        CAST(0 AS int64) AS registrations, -- int64 (default value 0)
        CAST(0 AS int64) AS revenue, -- int64 (default value 0)
        CAST(0 AS int64) AS shares, -- int64 (default value 0)
        CAST(spend AS int64) AS spend, -- int64
        CAST(0 AS int64) AS total_conversions, -- int64 (default value 0)
        CAST(video_total_views AS int64) AS video_views -- int64
    FROM {{ ref('src_promoted_tweets_twitter_all_data') }}
)

SELECT *
FROM stg_promoted_tweets_twitter_all_data