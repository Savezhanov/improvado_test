WITH stg_ads_tiktok_ads_all_data AS (
    SELECT 
        CAST(ad_id AS string) AS ad_id, -- string
        CAST(add_to_cart AS int64) AS add_to_cart, -- int64
        CAST('' AS string) AS adset_id, -- string
        CAST(campaign_id AS string) AS campaign_id, -- string
        CAST(channel AS string) AS channel, -- string
        CAST(clicks AS int64) AS clicks, -- int64
        CAST(0 AS int64) AS comments, -- int64
        CAST('' AS string) AS creative_id, -- string
        CAST(date AS date) AS date, -- date
        CAST(0 AS int64) AS engagements, -- int64
        CAST(impressions AS int64) AS impressions, -- int64
        CAST(rt_installs AS int64) AS installs, -- int64
        CAST(0 AS int64) AS likes, -- int64
        CAST(clicks AS int64) AS link_clicks, -- int64
        CAST('' AS string) AS placement_id, -- string
        CAST(conversions AS int64) AS post_click_conversions, -- int64
        CAST(skan_conversion AS int64) AS post_view_conversions, -- int64
        CAST(0 AS int64) AS posts, -- int64
        CAST(purchase AS int64) AS purchase, -- int64
        CAST(registrations AS int64) AS registrations, -- int64
        CAST(0 AS int64) AS revenue, -- int64
        CAST(0 AS int64) AS shares, -- int64
        CAST(spend AS int64) AS spend, -- int64
        CAST(conversions AS int64) AS total_conversions, -- int64
        CAST(video_views AS int64) AS video_views -- int64
    FROM {{ ref('src_ads_tiktok_ads_all_data') }}
)

SELECT *
FROM stg_ads_tiktok_ads_all_data