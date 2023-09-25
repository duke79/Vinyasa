# Vinyasa
Development environment configurator

**Yet to be started**

## Meanwhile Shorthands

## Postgres
* [ ] `username`=`postgres`
* [ ] `db`=`postgres`
* [ ] `password`=`admin`
* [ ] `port`=`5432`

```sh
docker run -d -v /Users/pulkitsingh/dev/auth-dummy:/bitnami/postgresql -e POSTGRESQL_PASSWORD=admin -p 5432:5432 bitnami/postgresql:latest
```

```sql
psql -U postgres
\x auto

CREATE TABLE auth_user (
  id serial PRIMARY KEY NOT NULL,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
  phone VARCHAR (50),
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

select * from pg_stat_user_tables;

\dt

INSERT INTO auth_user (username, password, phone) VALUES ('pulkit', 'empty', '82325435234');
SELECT * from auth_user;
```

## Typeorm
* [ ] Installation
```sh
npm install typeorm
npm install reflect-metadata 
# and import it somewhere in the global place of your app (for example in app.ts):
# import "reflect-metadata"
npm install @types/node
npm install pg
```

* [ ] `tsconfig.json`
```json
{
  "compilerOptions": {
    "emitDecoratorMetadata": true,
    "experimentalDecorators": true,
    ...
```

## Alfred
https://pypi.org/project/Alfred-PyWorkflow/
```
query=$1
cat <<EOF | /opt/homebrew/bin/python3
from workflow import Workflow

def main(wf):
    # Get the query from Alfred
    query = wf.args[0]

    # Retrieve the stored duration
    stored_duration = wf.stored_data('selected_duration')

    # Define an array of time duration suggestions
    durations = ["5 mins", "10 mins", "20 mins", "30 mins", "40 mins", "1 hour", "2 hours", "3 hours", "4 hours"]

    # Initialize a list to store the workflow items
    items = []

    # Loop through the durations and create workflow items
    for duration in durations:
        # Check if the current duration matches the stored duration
        if duration == stored_duration:
            subtitle = "Selected"
        else:
            subtitle = "Set a timer for {}".format(duration)

        # Add the item to the list
        items.append({
            "title": duration,
            "subtitle": subtitle,
            "arg": duration,
            "valid": True,
            "icon": "icon.png"  # Replace with your icon path
        })

    # Send the items to Alfred
    wf.add_items(items)

    # Handle the case where an option is selected
    if query:
        wf.store_data('selected_duration', query)

    # Send the results to Alfred
    wf.send_feedback()

if __name__ == "__main__":
    wf = Workflow()
    wf.run(main)

EOF
```
