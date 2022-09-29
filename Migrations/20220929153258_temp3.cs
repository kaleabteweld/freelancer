using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class temp3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "organizionId",
                table: "AspNetUsers",
                newName: "UserOrganizion");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "UserOrganizion",
                table: "AspNetUsers",
                newName: "organizionId");
        }
    }
}
