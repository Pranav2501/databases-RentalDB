SELECT 
    PropertyOwner.Name AS OwnerName, 
    COUNT(Property.property_ID) AS NumberOfProperties
FROM 
    PropertyOwner
JOIN 
    Property ON PropertyOwner.propertyowner_ID = Property.propertyowner_ID
GROUP BY 
    PropertyOwner.Name
HAVING 
    COUNT(Property.property_ID) >= 3;
