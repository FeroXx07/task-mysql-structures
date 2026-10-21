SET @selected_optician = 'Cul d''Ampolla';

SELECT DISTINCT 
	o.name,
    p.name
FROM ticket as t
JOIN lenses as l
	USING (lenses_id)
JOIN brand as b
	USING (brand_id)
JOIN providers as p
	USING (provider_id)
JOIN opticians as o
	USING (optician_id)
WHERE o.name = @selected_optician;
