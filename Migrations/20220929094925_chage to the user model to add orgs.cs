using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class chagetotheusermodeltoaddorgs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "userId",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_userId",
                table: "Organizions",
                column: "userId",
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions",
                column: "userId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_userId",
                table: "Organizions");

            migrationBuilder.DropColumn(
                name: "userId",
                table: "Organizions");
        }
    }
}
