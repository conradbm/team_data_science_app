# Author: Blake Conrad
# Contents: A routine to return bible text based on a query
# Args: Book and Chapter
# Return: All verses inside a specific book inside a specific chapter

use Bible;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getBookByChapter`(
    IN book_request int(11),
    IN chapter_request int(11)
)
BEGIN
    select t from t_kjv
    where (b = book_request) and (c = chapter_request);
END$$
DELIMITER ;