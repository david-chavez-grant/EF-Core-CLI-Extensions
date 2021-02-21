#!/bin/bash
dotnet ef --startup-project $EFSTARTUP migrations add --context $1DbContext $2
dotnet build;