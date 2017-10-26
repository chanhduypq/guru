CREATE VIEW products_view 
AS 
SELECT products.id,products.images,brands.`name` as brand_name, family.`name` as family_name,products.reference,products.`name`,products.movementType,products.diameter,products.brandId
FROM products LEFT JOIN brands on brands.id=products.brandId LEFT JOIN family on family.id=products.familyId