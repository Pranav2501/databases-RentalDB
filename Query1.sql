SELECT 
    Tenant.Name AS TenantName,
    Property.Address AS PropertyAddress,
    LeaseAgreement.LeaseStartDate,
    LeaseAgreement.LeaseEndDate,
    LeaseAgreement.RentAmount
FROM 
    Tenant
JOIN 
    LeaseAgreement ON Tenant.tenant_ID = LeaseAgreement.tenant_ID
JOIN 
    Property ON LeaseAgreement.property_ID = Property.property_ID;