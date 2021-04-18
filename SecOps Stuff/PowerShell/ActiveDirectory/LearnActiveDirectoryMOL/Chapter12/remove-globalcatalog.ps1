﻿$dc = "dc02.manticore.org"

$contextType = [System.DirectoryServices.ActiveDirectory.DirectoryContextType]::DirectoryServer

$context = New-Object –TypeName

System.DirectoryServices.ActiveDirectory.DirectoryContext -ArgumentList $contextType, $dc

$gc = [System.DirectoryServices.ActiveDirectory.GlobalCatalog]::GetGlobalCatalog($context)

$gc.DisableGlobalCatalog()