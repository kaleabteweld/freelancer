using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class temp1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Organizions_organizioninstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_organizioninstitutionId",
                table: "AspNetUsers");

            migrationBuilder.RenameColumn(
                name: "organizioninstitutionId",
                table: "AspNetUsers",
                newName: "organizionId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "organizionId",
                table: "AspNetUsers",
                newName: "organizioninstitutionId");

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
    }
}
