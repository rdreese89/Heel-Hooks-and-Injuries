SELECT Year, Count(*) as Total_Wins,
COUNT(CASE WHEN Method IN ('Ankle lock','Dogbar','Estima lock','Footlock','Heel hook', 
  'Inside heel hook','Kneebar','Lateral kneebar','Leglock',
  'Mikey lock','Outside heel hook','Straight ankle lock','Toe hold') THEN 1 END) as Leg_Lock_Count,
COUNT(CASE WHEN Method IN ('Ankle lock','Dogbar','Estima lock','Footlock','Heel hook', 
  'Inside heel hook','Kneebar','Lateral kneebar','Leglock',
  'Mikey lock','Outside heel hook','Straight ankle lock','Toe hold') THEN 1 END) / COUNT(*) * 100 as Leg_Lock_Percent,
COUNT(CASE WHEN Method IN ('Injury') THEN 1 END) as Injury_Count,
COUNT(CASE WHEN Method IN ('Injury') THEN 1 END) / COUNT(*) * 100 as Injury_Percent,
COUNT(CASE WHEN Method in ('Heel hook','Inside heel hook','Outside heel hook') THEN 1 END) as Heel_Hook_Count,
COUNT(CASE WHEN Method in ('Heel hook','Inside heel hook','Outside heel hook') THEN 1 END) / COUNT(*) * 100 as Heel_Hook_Percent

FROM `bjj-dataset.bjj_match_records.data`
WHERE W_L = 'W' AND YEAR != 2023
GROUP BY Year
ORDER BY Year ASC