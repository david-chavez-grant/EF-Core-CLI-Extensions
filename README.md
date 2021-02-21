# EF-Core-CLI-Extensions
_The CLI commands are too long and I already have the VS2019 Package Manager Console commands memorized._ 

### IMPORTANT:
**"DbContext" is appended to arguments that specify a DbContext name.**  
e.g. `$ Update-Database MyAppDbContext` actually runs `$ Update-Database MyAppDbContextDbContext`

**Commands target the working directory project, but specify a different startup project.**  
Same as `$ dotnet ef --startup-project ../path/project.csproj [command]`  
e.g. working directory _`/../src/InfrastructureLibrary/`_ contains AppDbContext.cs, \
but running project is in _`/../src/WebApplication/`_

**Set a path to** _`startup.csproj`_ **while inside** _`/your/work/dir/`_ **with** `$ Set-Startup-Project ../path/to/startup.csproj` \
It sets an env var `$EFSTARTUP` that must be set each shell session.

**Remember to source the .ef-core-cli-extensions in your shell startup (.bashrc .zshrc, etc.) file.**  
e.g. `source ~/Path/To/Folder/.ef-core-cli-extensions`

## Commands
**Other CLI options can still be added.** \
e.g. `$ List-Migrations AppIdentity --no--build`

**Database:**
* `$ Drop-Database [DbContextName]`
* `$ Update-Database [DbContextName]`

**DbContext:**
* `$ GetInfo-DbContext [Name]`
* `$ Scaffold-DbContext [DatabaseConnection]`
* `$ Script-DbContext [Name]` \
_(writes to `[Name].sql` in working directory)_

**Migrations:**
* `$ Add-Migration [DbContextName] [Name]`
* `$ Remove-Migration [DbContextName]`
* `$ List-Migrations [DbContextName]`
* `$ Script-Migrations [DbContextName] [Start?] [End?]`  \
_(writes to variations of `[DbContextName]Migration.sql` in working directory)_

## Official Microsoft Docs

[CLI Commands](https://docs.microsoft.com/en-us/ef/core/cli/dotnet)\
[VS Console Commands](https://docs.microsoft.com/en-us/ef/core/cli/powershell)
