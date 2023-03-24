using Elsa;
using Elsa.Persistence.EntityFramework.Core.Extensions;
using Elsa.Persistence.EntityFramework.SqlServer;


var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddElsa(options => options
                    .UseEntityFrameworkPersistence(ef=>ef.UseSqlServer("Data Source=localhost;Initial Catalog=Elsa;User ID=sa;Password=1qaz!QAZ123456;"),false)
                    //.UseEntityFrameworkPersistence(ef => ef.UseSqlite())
                    .AddConsoleActivities()
                    .AddQuartzTemporalActivities()
                ); 
var app = builder.Build();

app.UseStaticFiles();
app.UseRouting(); 
app.UseEndpoints(endpoints => { endpoints.MapControllers();endpoints.MapFallbackToPage("/_Host"); });

app.Run();
