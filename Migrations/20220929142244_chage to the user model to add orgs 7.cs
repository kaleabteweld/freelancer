using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class chagetotheusermodeltoaddorgs7 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_Id",
                table: "Organizions");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Organizions",
                newName: "userId");

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

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_userId",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_userId",
                table: "Organizions");

            migrationBuilder.RenameColumn(
                name: "userId",
                table: "Organizions",
                newName: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_Id",
                table: "Organizions",
                column: "Id",
                unique: true,
                filter: "[Id] IS NOT NULL");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions",
                column: "Id",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
