# Pipeline description

Files starting with `production` are designs that are 'green' and should
block OpenLane tags update.

Files starting with `unstable` are designs that need tuning or investigation
for the reason they are failing.

Further, the pipelines are divided between `small` (i.e., runtime less than
1 hour with timeout of 2 hours) and `large` (i.e., runtime more than 1 hour
and timeout of 8 hours).
