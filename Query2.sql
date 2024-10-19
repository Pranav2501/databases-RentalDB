SELECT Tenant.Name, Tenant.Email 
FROM Tenant 
WHERE Tenant.tenant_ID IN (
    SELECT Application.tenant_ID 
    FROM Application 
    WHERE Application.ApplicationStatus = 'Pending'
);
