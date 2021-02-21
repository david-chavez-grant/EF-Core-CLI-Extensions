#!/bin/bash
if [ $# -eq 1 ]; then
    dotnet ef --startup-project $EFSTARTUP migrations script --context $1DbContext -o $1MigrationHistory.sql
elif [ $# -eq 2 ]; then
    dotnet ef --startup-project $EFSTARTUP migrations script --context $1DbContext $2 -o $1MigrationsAfter__$2.sql
elif [ $# -eq 3 ]; then
        dotnet ef --startup-project $EFSTARTUP migrations script --context $1DbContext $2 $3 -o $1Migrations__$2--$3.sql
fi

