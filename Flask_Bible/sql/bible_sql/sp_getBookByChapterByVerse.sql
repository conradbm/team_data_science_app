# Author: Blake Conrad
# Contents: Return bible text based on a query
# Args: Book, Chapter, and Verse
# Return: A specific verse explicitely requested by the query

use Bible;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getBookByChapterByVerse`(
    IN book_request int(11),
    IN chapter_request int(11),
    IN verse_request int(11)
)
BEGIN
    select t from t_kjv
    where (b = book_request)    and 
		  (c = chapter_request) and 
          (v = verse_request);
END$$
DELIMITER ;