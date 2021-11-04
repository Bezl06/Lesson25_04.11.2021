using WebApplication3.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
string connectionString = "Server=.;Database=Users;Integrated Security=True";
builder.Services.AddTransient<IPersonRepository,PersonRepository>(provider=>new PersonRepository(connectionString));
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
