WITH ads_bing_all_data AS (
    SELECT 
    ad_id
    add_to_cart
    adset_id
    campaign_id
    channel
    clicks
    comments
    creative_id
    date
    engagements
    impressions
    installs
    likes
    link_clicks
    placement_id
    post_click_conversions
    post_view_conversions
    posts
    purchase
    registrations
    revenue
    shares
    spend
    total_conversions
    video_views
    FROM {{ ref('src_ads_bing_all_data') }}
),

ads_creative_facebook_all_data AS (
    SELECT *
    FROM {{ ref('src_ads_creative_facebook_all_data') }}
),

ads_tiktok_ads_all_data AS (
    SELECT *
    FROM {{ ref('src_ads_tiktok_ads_all_data') }}
),

seed_paid_ads AS (
    SELECT *
    FROM ads_bing_all_data
    UNION ALL
    SELECT *
    FROM ads_creative_facebook_all_data
    UNION ALL
    SELECT *
    FROM ads_tiktok_ads_all_data
)

SELECT * FROM seed_paid_ads