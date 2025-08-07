CREATE PROCEDURE BalancePerCustomer
    @name NVARCHAR(100)
AS
BEGIN
    SELECT 
        c.CustomerName,
        a.AccountType,
        a.Balance AS OriginalBalance,
        a.Balance + ISNULL(SUM(
            CASE 
                WHEN t.TransactionType = 'Deposit' THEN Amount
                ELSE -Amount
            END
        ), 0) AS CurrentBalance
    FROM DWH.dbo.DimAccount a
    JOIN DWH.dbo.DimCustomer c ON a.CustomerID = c.CustomerID
    LEFT JOIN DWH.dbo.FactTransaction t ON a.AccountID = t.AccountID
    WHERE a.Status = 'Active' AND c.CustomerName = @name
    GROUP BY c.CustomerName, a.AccountType, a.Balance;
END;

EXEC BalancePerCustomer 'SHELLY JUWITA';
EXEC BalancePerCustomer 'Susi Rahmawati';
EXEC BalancePerCustomer 'BOBI RINALDO';

DROP PROCEDURE IF EXISTS BalancePerCustomer;