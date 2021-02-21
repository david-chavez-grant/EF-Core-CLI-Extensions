#!/bin/bash
dotnet ef --startup-project $EFSTARTUP migrations list --context $1DbContext