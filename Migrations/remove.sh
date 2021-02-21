#!/bin/bash
dotnet ef --startup-project $EFSTARTUP migrations remove --context $1DbContext