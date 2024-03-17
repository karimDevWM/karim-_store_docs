DELIMITER //
CREATE PROCEDURE chiffre_affaire()
BEGIN
	SELECT sum(karim_eshop.Orders.Subtotal) FROM karim_eshop.Orders;
END //

DELIMITER ;