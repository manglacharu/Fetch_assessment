/*
Q - When considering average spend from receipts with 'rewardsReceiptStatus’ of ‘Accepted’ or ‘Rejected’, which is greater?
*/

SELECT
    rewardsReceiptStatus,
    AVG(totalSpent) AS avg_total_spent
FROM
    receipts
WHERE
    rewardsReceiptStatus IN ('FINISHED', 'REJECTED')
GROUP BY
    rewardsReceiptStatus
ORDER BY
    avg_total_spent DESC;


/*
We are assuming 'Finished' as 'Accepted', since there is no such value as 'Accepted' in Receipt Status column.

As we can see, for Finished, i.e., Accepted the average total spend is 80.85 and that for Rejected is 23.32, hence we can say that 
the average spend is greater for Accepted/Finished receipt status.

*/

