set hive.plan.serialization.format=javaXML;

-- EXCLUDE_OS_WINDOWS
-- Exclude on windows due to BUG-27556
select
  cast(key as decimal(10,2)) as c1,
  cast(key as char(10)) as c2,
  cast(key as varchar(10)) as c3
from src
order by c1, c2, c3
limit 1;
