using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class chagetotheusermodeltoaddorgs3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_Id",
                table: "Organizions");

            migrationBuilder.AlterColumn<string>(
                name: "Id",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

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

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_Id",
                table: "Organizions");

            migrationBuilder.AlterColumn<string>(
                name: "Id",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(450)",
                oldNullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_Id",
                table: "Organizions",
                column: "Id",
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_Id",
                table: "Organizions",
                column: "Id",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
