/*
Q - When considering total number of items purchased from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
*/

SELECT
    r.rewardsReceiptStatus,
    SUM(ri.quantityPurchased) AS total_items_purchased
FROM
    receipts r
JOIN
	receipts_item ri
ON 
	r._id = ri._id
WHERE
    r.rewardsReceiptStatus IN ('FINISHED', 'REJECTED')
GROUP BY
    r.rewardsReceiptStatus
ORDER BY
    total_items_purchased DESC;

/*

As we can see, total number of items purchased for Accepted/Finished is 8176, and that for Rejected is 141, so we can conclude that
total number of items purchased is greater for Accepted/Finished receipt status than Rejected.

*/