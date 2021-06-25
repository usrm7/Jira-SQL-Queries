/* Viewing Custom Fields */
select jp.pkey, ji.issuenum, cf.cfname, cfv.stringvalue, cfv.numbervalue
from project jp, jiraissue ji, customfield cf, customfieldvalue cfv
where jp.id = ji.project
and cfv.issue = ji.id
and cf.id = cfv.customfield
order by jp.pkey, ji.issuenum
