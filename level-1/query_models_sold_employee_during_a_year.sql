SET @start_date = '2026-01-01';
SET @end_date   = '2027-01-01';

SELECT DISTINCT
	e.employee_id,
	p.name as employee_name,
	l.lenses_id,
    t.created_at
FROM lenses as l
JOIN ticket as t
    USING (lenses_id)
JOIN employee as e
	USING (employee_id)
JOIN persons as p
	ON e.person_id = p.person_id
WHERE t.created_at >= @start_date
	AND t.created_at <= @end_date
