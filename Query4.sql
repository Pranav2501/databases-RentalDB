SELECT 
    Tenant.Name AS TenantName, 
    Property.Address AS PropertyAddress, 
    LeaseAgreement.RentAmount
FROM 
    Tenant
JOIN 
    LeaseAgreement ON Tenant.tenant_ID = LeaseAgreement.tenant_ID
JOIN 
    Property ON LeaseAgreement.property_ID = Property.property_ID
JOIN 
    MaintenanceRequest ON Tenant.tenant_ID = MaintenanceRequest.tenant_ID
WHERE 
    (Property.City = 'Springfield' OR Property.City = 'Metropolis')
    AND Property.PropertyType = 'House'
    AND MaintenanceRequest.Status = 'Completed'
    AND LeaseAgreement.RentAmount > 2000;
