#!/bin/bash
dotnet ef --startup-project $EFSTARTUP database update --context $1DbContext