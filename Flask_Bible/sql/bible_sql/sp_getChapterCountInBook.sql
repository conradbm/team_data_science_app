# Author: Blake Conrad
# Contents: Return unique chapter count for book in the bible
# Args: BookID
# Return: integer representing the raw number of chapters

use Bible;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getChapterCountInBook`(
    IN book_request int(11)
)
BEGIN
    select count(distinct(c)) from t_kjv where b = book_request;
END$$
DELIMITER ;
