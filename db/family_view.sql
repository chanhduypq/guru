CREATE VIEW family_view 
AS 
SELECT family.id,family.createdAt,family.`name`,family.slug,family.updatedAt,brands.`name` as brand_name
FROM family LEFT JOIN brands ON family.brandId=brands.id 