SELECT sum(completed_at - started_at)/count(assignments.*) as average_assistance_request_duration
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id;
