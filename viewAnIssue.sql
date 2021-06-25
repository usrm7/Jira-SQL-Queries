select * from jiraissue, project
where project.id = jiraissue.project
and project.pkey = 'KEY'
and jiraissue.issuenum = 1234;

