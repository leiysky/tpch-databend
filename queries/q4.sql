select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= to_date(':1')
	and o_orderdate < addMonths(to_date(':1'), 3)
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority
;