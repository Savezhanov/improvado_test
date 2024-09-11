WITH stg_ads_bing_all_data AS (
    SELECT 
        ad_id,
        0 as add_to_cart,
        adset_id,
        campaign_id,
        channel,
        clicks,
        '' as comments,
        0 as creative_id,
        date,
        0 as engagements,
        0 as impressions,
        installs,
        likes,
        link_clicks,
        placement_id,
        post_click_conversions,
        post_view_conversions,
        posts,
        purchase,
        registrations,
        revenue,
        shares,
        spend,
        total_conversions,
        video_views
    FROM {{ ref('src_ads_bing_all_data') }}
)

SELECT *
FROM stg_ads_bing_all_data