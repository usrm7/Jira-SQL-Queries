/*Viewing issue versions*/

select jp.pkey, ji.issuenum, pv.vname
from project jp, jiraissue ji, projectversion pv, nodeassociation na
where jp.id = ji.project
and na.sink_node_entity = 'Version'
and na.source_node_id = ji.id
and pv.id = na.sink_node_id
order by jp.pkey, ji.issuenum
