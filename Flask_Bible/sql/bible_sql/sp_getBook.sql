# Author: Blake Conrad
# Contents: A routine that returns bible text based on a query
# Args: Book
# Return: All verses in every chapter associated with the book queried


use Bible;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getChapterCountInBook`(
    IN book_request int(11)
)
BEGIN
    select count(distinct(c)) from t_kjv where b = book_request;
END$$
DELIMITER ;
