using LtuBank.API;
using Newtonsoft.Json.Serialization;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


		

//builder.Services.AddScoped<IServiceProvider, ServiceProvider>();
builder.Services.AddCors(c =>
{
	c.AddPolicy("AllowOrigin", options =>
	{
		options.AllowAnyOrigin()
		.AllowAnyMethod() //AllowAllMethods;  
		.AllowAnyHeader();
	});
});

builder.Services
	.AddConfig(builder.Configuration)
	.AddMyDependencyGroup();

builder.Services.AddMvc();//.AddJsonOptions(options => options.SerializerSettings.ContractResolver = new DefaultContractResolver()); ;

builder.Services.AddControllers().AddNewtonsoftJson(options =>
{
	options.SerializerSettings.ContractResolver = new DefaultContractResolver();
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();
app.UseCors();

app.UseCors(x => x
  .AllowAnyOrigin()
	.AllowAnyMethod()
	.AllowAnyHeader());

app.Run();
