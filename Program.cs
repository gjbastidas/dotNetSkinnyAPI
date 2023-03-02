var builder = WebApplication.CreateBuilder(args);

var app = builder.Build();

app.MapGet("/docs/", () => "Hello World!");
app.MapGet("/docs/healthz", () => "{ok: true}");

app.Run();
