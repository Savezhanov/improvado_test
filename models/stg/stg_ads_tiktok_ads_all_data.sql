WITH stg_ads_tiktok_ads_all_data AS (
    SELECT 
        ad_id,
        add_to_cart,
        '' as adset_id,
        campaign_id,
        channel,
        clicks,
        ad_text as comments,
        '' as creative_id,
        date,
        0 as engagements,
        impressions,
        rt_installs as installs,
        0 as likes,
        clicks as link_clicks,
        '' as placement_id,
        conversions as post_click_conversions,
        skan_conversion as post_view_conversions,
        0 as posts,
        purchase,
        registrations,
        0 as revenue,
        0 as shares,
        spend,
        0 as total_conversions,
        video_views
    FROM {{ ref('src_ads_tiktok_ads_all_data') }}
)

SELECT *
FROM stg_ads_tiktok_ads_all_data