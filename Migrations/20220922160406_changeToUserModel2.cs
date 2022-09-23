using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class changeToUserModel2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "WorkingJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "Skills",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "PostJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "Organizions",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "DoneJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId1",
                table: "DoneJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Discriminator",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "XP",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "collageinstitutionId",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "fullName",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "studentsId",
                table: "AspNetUsers",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_WorkingJobs_UserModelId",
                table: "WorkingJobs",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_UserModelId",
                table: "Skills",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_PostJobs_UserModelId",
                table: "PostJobs",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_Organizions_UserModelId",
                table: "Organizions",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobs_UserModelId",
                table: "DoneJobs",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobs_UserModelId1",
                table: "DoneJobs",
                column: "UserModelId1");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_collageinstitutionId",
                table: "AspNetUsers",
                column: "collageinstitutionId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUsers_studentsId",
                table: "AspNetUsers",
                column: "studentsId");

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Collages_collageinstitutionId",
                table: "AspNetUsers",
                column: "collageinstitutionId",
                principalTable: "Collages",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_AspNetUsers_Students_studentsId",
                table: "AspNetUsers",
                column: "studentsId",
                principalTable: "Students",
                principalColumn: "studentsId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId",
                table: "DoneJobs",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId1",
                table: "DoneJobs",
                column: "UserModelId1",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Organizions_AspNetUsers_UserModelId",
                table: "Organizions",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PostJobs_AspNetUsers_UserModelId",
                table: "PostJobs",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_AspNetUsers_UserModelId",
                table: "Skills",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_UserModelId",
                table: "WorkingJobs",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Collages_collageinstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropForeignKey(
                name: "FK_AspNetUsers_Students_studentsId",
                table: "AspNetUsers");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId1",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_Organizions_AspNetUsers_UserModelId",
                table: "Organizions");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_AspNetUsers_UserModelId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_AspNetUsers_UserModelId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_UserModelId",
                table: "WorkingJobs");

            migrationBuilder.DropIndex(
                name: "IX_WorkingJobs_UserModelId",
                table: "WorkingJobs");

            migrationBuilder.DropIndex(
                name: "IX_Skills_UserModelId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_PostJobs_UserModelId",
                table: "PostJobs");

            migrationBuilder.DropIndex(
                name: "IX_Organizions_UserModelId",
                table: "Organizions");

            migrationBuilder.DropIndex(
                name: "IX_DoneJobs_UserModelId",
                table: "DoneJobs");

            migrationBuilder.DropIndex(
                name: "IX_DoneJobs_UserModelId1",
                table: "DoneJobs");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_collageinstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropIndex(
                name: "IX_AspNetUsers_studentsId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "WorkingJobs");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "PostJobs");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "Organizions");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "DoneJobs");

            migrationBuilder.DropColumn(
                name: "UserModelId1",
                table: "DoneJobs");

            migrationBuilder.DropColumn(
                name: "Discriminator",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "XP",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "collageinstitutionId",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "fullName",
                table: "AspNetUsers");

            migrationBuilder.DropColumn(
                name: "studentsId",
                table: "AspNetUsers");
        }
    }
}
