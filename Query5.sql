WITH TenantPayments AS (
    SELECT 
        Tenant.tenant_ID, 
        Tenant.Name, 
        SUM(Payment.Amount) AS TotalPaid
    FROM 
        Tenant
    JOIN 
        Payment ON Tenant.tenant_ID = Payment.tenant_ID
    GROUP BY 
        Tenant.tenant_ID
)
SELECT 
    Name, 
    TotalPaid, 
    CASE 
        WHEN TotalPaid >= 6000 THEN 'High Payer'
        ELSE 'Low Payer'
    END AS PaymentCategory,
    RANK() OVER (ORDER BY TotalPaid DESC) AS PaymentRank
FROM 
    TenantPayments;
