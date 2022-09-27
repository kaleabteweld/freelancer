using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class updateApplicantsModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "cvUploadLoc",
                table: "Applicants",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "cvUploadLoc",
                table: "Applicants");
        }
    }
}
