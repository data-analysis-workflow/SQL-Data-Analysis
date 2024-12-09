SELECT 
    gender,  -- Column to show gender
    country, -- Column to show country
    COUNT(*) AS customer_count -- Counts the number of customers
FROM 
    customers
GROUP BY 
    CUBE (gender, country) -- Groups the data by all combinations of gender and country, including subtotals and grand totals.
ORDER BY 
    country; -- Orders the result set by country.