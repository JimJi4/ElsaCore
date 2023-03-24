using Elsa;
using Elsa.Persistence.EntityFramework.Core.Extensions;
//using Elsa.Persistence.EntityFramework.Sqlite;
using Elsa.Persistence.EntityFramework.SqlServer;
using MyElsaServer.WF;

var builder = WebApplication.CreateBuilder(args);


var elsaSection = builder.Configuration.GetSection("Elsa");

// Elsa services.
builder.Services
    .AddElsa(elsa => elsa
        .UseEntityFrameworkPersistence(ef => ef.UseSqlServer("Data Source=localhost;Initial Catalog=Elsa;User ID=sa;Password=1qaz!QAZ123456;"),false)
        .AddConsoleActivities()
        .AddHttpActivities(elsaSection.GetSection("Server").Bind)
        .AddEmailActivities(elsaSection.GetSection("Smtp").Bind)
        .AddJavaScriptActivities()
        .AddQuartzTemporalActivities()
        .AddWorkflow<DocumentApprovalWorkflow>()
        //.AddWorkflowsFrom<Startup>()
    );

// Elsa API endpoints.
builder.Services.AddElsaApiEndpoints()
                .AddElsaSwagger();

// Allow arbitrary client browser apps to access the API.
// In a production environment, make sure to allow only origins you trust.
builder.Services.AddCors(cors => cors.AddDefaultPolicy(policy => policy
    .AllowAnyHeader()
    .AllowAnyMethod()
    .AllowAnyOrigin()
    .WithExposedHeaders("Content-Disposition"))
);

var app = builder.Build();

app
    .UseCors()
    .UseHttpActivities()
    .UseRouting()
    .UseEndpoints(endpoints =>
     {
       // Elsa API Endpoints are implemented as regular ASP.NET Core API controllers.
       endpoints.MapControllers();
     })
    .UseSwagger()
    .UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "ELSE server");
    })
    .UseWelcomePage();



app.Run();
