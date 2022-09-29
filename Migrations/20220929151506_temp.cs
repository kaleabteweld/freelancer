using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class temp : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
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

            migrationBuilder.AddColumn<int>(
                name: "organizioninstitutionId",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_organizioninstitutionId",
                table: "AspNetUsers",
                column: "organizioninstitutionId");

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Organizions_organizioninstitutionId",
                table: "AspNetUsers",
                column: "organizioninstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Organizions_organizioninstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_organizioninstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "organizioninstitutionId",
                table: "AspNetUsers");

            migrationBuilder.AddColumn<string>(
                name: "userId",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_userId",
                table: "Organizions",
                column: "userId",
                unique: true,
                filter: "[userId] IS NOT NULL");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions",
                column: "userId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
