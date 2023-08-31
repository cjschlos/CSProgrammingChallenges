
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

### From this, Ohio is the third best revenue genearting state.

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

### From this, Georgia generated the most converions.


### 5.
SELECT camp.name AS campaign_name,
       SUM(wr.revenue) - SUM(mp.cost) AS efficiency
FROM campaign_info camp
JOIN marketing_performance mp ON camp.id = mp.campaign_id
JOIN website_revenue wr ON camp.id = wr.campaign_id
GROUP BY camp.name
ORDER BY efficiency DESC
LIMIT 1;


### BONUS
  
SELECT DAYNAME(mp.date) AS day_of_week,
       AVG(mp.clicks) AS avg_clicks
FROM marketing_performance mp
GROUP BY day_of_week
ORDER BY avg_clicks DESC
LIMIT 1;

### From this, I beleive that campaign 4 was the most efficent because it had the highest proft (revenue - cost) out of all the campaigns.
