
### 1.
SELECT date, sum(impressions) as total_impressions
FROM martketing_performance
GROUP BY date;

### 2.

SELECT state, SUM(revenue) AS total_revenue
FROM website_revenue
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 3;

### 3. 

SELECT camp.name AS campaign_name,
  SUM(mp.costs) AS total_costs
  SUM(mp.clicks) AS total_clicks
  SUM(mp.revenue) AS total_revenue
FROM campaign_info camp 
JOIN marketing_performance mp ON campaign_info.id = marketing_performance.campaign_id
JOIN website_revenue wr ON campaign_info.id = website_revenue.campaign_id
GROUP BY campaign_info.name;

### 4.
SELECT mp.geo AS state, SUM(conversions) AS total_conversions
FROM marketing_performance mp
WHERE mp.campaign_id = 'Campaign5'
GROUP BY mp.geo
ORDER BY total_conversions DESC
LIMIT 1;


### 5.
SELECT 
