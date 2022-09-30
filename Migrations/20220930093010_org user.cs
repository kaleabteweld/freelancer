using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class orguser : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_UserModelId",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_UserModelId",
                table: "Organizions");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "Organizions");

            migrationBuilder.AddColumn<string>(
                name: "UserId",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: true);

            //migrationBuilder.CreateIndex(
            //    name: "IX_Organizions_UserId",
            //    table: "Organizions",
            //    column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_UserId",
                table: "Organizions",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id"
                );
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_UserId",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_UserId",
                table: "Organizions");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "Organizions");

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_UserModelId",
                table: "Organizions",
                column: "UserModelId");

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_UserModelId",
                table: "Organizions",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
