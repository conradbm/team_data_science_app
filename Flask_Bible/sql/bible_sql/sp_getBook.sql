# Author: Blake Conrad
# Contents: Return bible text based on a query
# Args: Book
# Return: All verses in every chapter associated with the book queried


use Bible;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getBook`(
    IN book_request int(11)
)
BEGIN
    select t from t_kjv where b = book_request;
END$$
DELIMITER ;
