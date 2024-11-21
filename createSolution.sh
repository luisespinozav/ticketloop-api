#!/bin/bash

echo "Creating .NET API"
dotnet new webapi --use-controllers -o TicketLoopApi # To create an ASP.NET Core Web API

echo "Creating .NET XUnit Test Project"
dotnet new xunit -o TicketLoopApi.Tests

echo "Adding API to Test Project"
dotnet add TicketLoopApi.Tests reference TicketLoopApi

echo "Creating solution file"
dotnet new sln -n TicketLoopApi

echo "Adding projects to solution"
dotnet sln TicketLoopApi.sln add TicketLoopApi TicketLoopApi.Tests

echo "Adding NuGet Packages"
dotnet add TicketLoopApi.Tests package Microsoft.AspNetCore.Mvc.Testing --version 8.0.11
dotnet add TicketLoopApi package MiniValidation
