/* Viewing issue components */
select jp.pkey, ji.issuenum, c.cname
from project jp, jiraissue ji, component c, nodeassociation na
where jp.id = ji.project
and na.source_node_entity = 'Issue'
and na.sink_node_entity = 'Component'
and na.source_node_id = ji.id
and c.id = na.sink_node_id
