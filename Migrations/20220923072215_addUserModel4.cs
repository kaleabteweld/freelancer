using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class addUserModel4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_UserModelId1",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_AspNetUsers_UserModelId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_UserModelId",
                table: "WorkingJobs");

            migrationBuilder.RenameColumn(
                name: "UserModelId",
                table: "WorkingJobs",
                newName: "WorkingJobId");

            migrationBuilder.RenameIndex(
                name: "IX_WorkingJobs_UserModelId",
                table: "WorkingJobs",
                newName: "IX_WorkingJobs_WorkingJobId");

            migrationBuilder.RenameColumn(
                name: "UserModelId",
                table: "PostJobs",
                newName: "bookJobId");

            migrationBuilder.RenameIndex(
                name: "IX_PostJobs_UserModelId",
                table: "PostJobs",
                newName: "IX_PostJobs_bookJobId");

            migrationBuilder.RenameColumn(
                name: "UserModelId1",
                table: "DoneJobs",
                newName: "likedJobId");

            migrationBuilder.RenameColumn(
                name: "UserModelId",
                table: "DoneJobs",
                newName: "JobsDoneId");

            migrationBuilder.RenameIndex(
                name: "IX_DoneJobs_UserModelId1",
                table: "DoneJobs",
                newName: "IX_DoneJobs_likedJobId");

            migrationBuilder.RenameIndex(
                name: "IX_DoneJobs_UserModelId",
                table: "DoneJobs",
                newName: "IX_DoneJobs_JobsDoneId");

            migrationBuilder.AddForeignKey(
                name: "FK_DoneJobs_AspNetUsers_JobsDoneId",
                table: "DoneJobs",
                column: "JobsDoneId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DoneJobs_AspNetUsers_likedJobId",
                table: "DoneJobs",
                column: "likedJobId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PostJobs_AspNetUsers_bookJobId",
                table: "PostJobs",
                column: "bookJobId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_WorkingJobId",
                table: "WorkingJobs",
                column: "WorkingJobId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_JobsDoneId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_likedJobId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_AspNetUsers_bookJobId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_WorkingJobId",
                table: "WorkingJobs");

            migrationBuilder.RenameColumn(
                name: "WorkingJobId",
                table: "WorkingJobs",
                newName: "UserModelId");

            migrationBuilder.RenameIndex(
                name: "IX_WorkingJobs_WorkingJobId",
                table: "WorkingJobs",
                newName: "IX_WorkingJobs_UserModelId");

            migrationBuilder.RenameColumn(
                name: "bookJobId",
                table: "PostJobs",
                newName: "UserModelId");

            migrationBuilder.RenameIndex(
                name: "IX_PostJobs_bookJobId",
                table: "PostJobs",
                newName: "IX_PostJobs_UserModelId");

            migrationBuilder.RenameColumn(
                name: "likedJobId",
                table: "DoneJobs",
                newName: "UserModelId1");

            migrationBuilder.RenameColumn(
                name: "JobsDoneId",
                table: "DoneJobs",
                newName: "UserModelId");

            migrationBuilder.RenameIndex(
                name: "IX_DoneJobs_likedJobId",
                table: "DoneJobs",
                newName: "IX_DoneJobs_UserModelId1");

            migrationBuilder.RenameIndex(
                name: "IX_DoneJobs_JobsDoneId",
                table: "DoneJobs",
                newName: "IX_DoneJobs_UserModelId");

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
                name: "FK_PostJobs_AspNetUsers_UserModelId",
                table: "PostJobs",
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
    }
}
