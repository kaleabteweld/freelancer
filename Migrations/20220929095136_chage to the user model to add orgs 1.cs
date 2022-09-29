using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class chagetotheusermodeltoaddorgs1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions");

            migrationBuilder.RenameColumn(
                name: "userId",
                table: "Organizions",
                newName: "Id");

            migrationBuilder.RenameIndex(
                name: "IX_Organizions_userId",
                table: "Organizions",
                newName: "IX_Organizions_Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions",
                column: "Id",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Organizions",
                newName: "userId");

            migrationBuilder.RenameIndex(
                name: "IX_Organizions_Id",
                table: "Organizions",
                newName: "IX_Organizions_userId");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions",
                column: "userId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
