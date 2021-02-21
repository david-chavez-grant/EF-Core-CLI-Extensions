#!/bin/bash
dotnet ef --startup-project $EFSTARTUP database drop --context $1DbContext