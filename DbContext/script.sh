#!/bin/bash
dotnet ef --startup-project $EFSTARTUP dbcontext script --context $1DbContext -o $1.sql