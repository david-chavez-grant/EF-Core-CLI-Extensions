#!/bin/bash
dotnet ef --startup-project $EFSTARTUP dbcontext info --context $1DbContext