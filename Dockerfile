FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS build
WORKDIR /workdir
COPY . .
RUN dotnet restore "./DotNetSimpleAPI.csproj" --disable-parallel
RUN dotnet publish "./DotNetSimpleAPI.csproj" -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine
WORKDIR /
COPY --from=build /app .
EXPOSE 5001

ENTRYPOINT [ "dotnet", "DotNetSimpleAPI.dll" ]