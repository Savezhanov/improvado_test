WITH stg_ads_creative_facebook_all_data AS (
    SELECT 
        ad_id,
        add_to_cart,
        adset_id,
        campaign_id,
        channel,
        clicks,
        comments,
        creative_id,
        date,
        0 as engagements,
        impressions,
        0 as installs,
        likes,
        inline_link_clicks as link_clicks,
        '' as placement_id,
        0 as post_click_conversions,
        0 as post_view_conversions,
        0 as posts,
        0 as purchase,
        0 as registrations,
        0 as revenue,
        shares,
        spend,
        0 as total_conversions,
        views as video_views
    FROM {{ ref('src_ads_creative_facebook_all_data') }}
)

SELECT *
FROM stg_ads_creative_facebook_all_data