select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= to_date(':1')
	and l_shipdate < addYears(to_date(':1'), 1)
	and l_discount between 2 - 0.01 and 2 + 0.01
	and l_quantity < 3
;