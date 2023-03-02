creates application
```
dotnet new web
```

by default it runs with port :5000. To change it go to [appsettings.json](./appsettings.json)
y añade `"Urls": "http://*:5001"`

para instalar dependencias usa `dotnet restore`
para correr la app `dotnet run`