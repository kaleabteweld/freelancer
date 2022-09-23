using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class dbremodel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Courses_Students_studentsId",
                table: "Courses");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_JobsDoneId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_AspNetUsers_likedJobId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_Organizions_postByinstitutionId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_AspNetUsers_bookJobId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_Organizions_postByinstitutionId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_AspNetUsers_UserModelId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_DoneJobs_DoneJobjobId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_PostJobs_PostJobjobId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_Students_studentsId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Skills_WorkingJobs_WorkingJobjobId",
                table: "Skills");

            migrationBuilder.DropForeignKey(
                name: "FK_Students_Collages_CollageinstitutionId",
                table: "Students");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_WorkingJobId",
                table: "WorkingJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_Organizions_postByinstitutionId",
                table: "WorkingJobs");

            migrationBuilder.DropIndex(
                name: "IX_WorkingJobs_WorkingJobId",
                table: "WorkingJobs");

            migrationBuilder.DropIndex(
                name: "IX_Skills_DoneJobjobId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Skills_PostJobjobId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Skills_studentsId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Skills_UserModelId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_Skills_WorkingJobjobId",
                table: "Skills");

            migrationBuilder.DropIndex(
                name: "IX_PostJobs_bookJobId",
                table: "PostJobs");

            migrationBuilder.DropIndex(
                name: "IX_DoneJobs_JobsDoneId",
                table: "DoneJobs");

            migrationBuilder.DropIndex(
                name: "IX_DoneJobs_likedJobId",
                table: "DoneJobs");

            migrationBuilder.DropIndex(
                name: "IX_Courses_studentsId",
                table: "Courses");

            migrationBuilder.DropColumn(
                name: "WorkingJobId",
                table: "WorkingJobs");

            migrationBuilder.DropColumn(
                name: "DoneJobjobId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "PostJobjobId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "UserModelId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "WorkingJobjobId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "studentsId",
                table: "Skills");

            migrationBuilder.DropColumn(
                name: "bookJobId",
                table: "PostJobs");

            migrationBuilder.DropColumn(
                name: "JobsDoneId",
                table: "DoneJobs");

            migrationBuilder.DropColumn(
                name: "likedJobId",
                table: "DoneJobs");

            migrationBuilder.DropColumn(
                name: "studentsId",
                table: "Courses");

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "WorkingJobs",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "contractDetail",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "fullName",
                table: "Students",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "CollageinstitutionId",
                table: "Students",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "skillName",
                table: "Skills",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "PostJobs",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "phone",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "name",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "testimony",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "DoneJobs",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "contractDetail",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "courseName",
                table: "Courses",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "courseGrade",
                table: "Courses",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "phone",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "name",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "fullName",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.CreateTable(
                name: "DoneJobSkills",
                columns: table => new
                {
                    doneJobjobSkillRequirementsjobId = table.Column<int>(type: "int", nullable: false),
                    jobSkillRequirementsskillId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DoneJobSkills", x => new { x.doneJobjobSkillRequirementsjobId, x.jobSkillRequirementsskillId });
                    table.ForeignKey(
                        name: "FK_DoneJobSkills_DoneJobs_doneJobjobSkillRequirementsjobId",
                        column: x => x.doneJobjobSkillRequirementsjobId,
                        principalTable: "DoneJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_DoneJobSkills_Skills_jobSkillRequirementsskillId",
                        column: x => x.jobSkillRequirementsskillId,
                        principalTable: "Skills",
                        principalColumn: "skillId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "DoneJobUserModel",
                columns: table => new
                {
                    JobsDonejobId = table.Column<int>(type: "int", nullable: false),
                    employeesId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DoneJobUserModel", x => new { x.JobsDonejobId, x.employeesId });
                    table.ForeignKey(
                        name: "FK_DoneJobUserModel_AspNetUsers_employeesId",
                        column: x => x.employeesId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_DoneJobUserModel_DoneJobs_JobsDonejobId",
                        column: x => x.JobsDonejobId,
                        principalTable: "DoneJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "PostJobSkills",
                columns: table => new
                {
                    jobSkillRequirementsjobId = table.Column<int>(type: "int", nullable: false),
                    jobSkillRequirementsskillId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PostJobSkills", x => new { x.jobSkillRequirementsjobId, x.jobSkillRequirementsskillId });
                    table.ForeignKey(
                        name: "FK_PostJobSkills_PostJobs_jobSkillRequirementsjobId",
                        column: x => x.jobSkillRequirementsjobId,
                        principalTable: "PostJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PostJobSkills_Skills_jobSkillRequirementsskillId",
                        column: x => x.jobSkillRequirementsskillId,
                        principalTable: "Skills",
                        principalColumn: "skillId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "PostJobUserModel",
                columns: table => new
                {
                    bookJobsjobId = table.Column<int>(type: "int", nullable: false),
                    bookUsersId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PostJobUserModel", x => new { x.bookJobsjobId, x.bookUsersId });
                    table.ForeignKey(
                        name: "FK_PostJobUserModel_AspNetUsers_bookUsersId",
                        column: x => x.bookUsersId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PostJobUserModel_PostJobs_bookJobsjobId",
                        column: x => x.bookJobsjobId,
                        principalTable: "PostJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SkillsStudents",
                columns: table => new
                {
                    StudentsSkillsstudentsId = table.Column<int>(type: "int", nullable: false),
                    skillsskillId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SkillsStudents", x => new { x.StudentsSkillsstudentsId, x.skillsskillId });
                    table.ForeignKey(
                        name: "FK_SkillsStudents_Skills_skillsskillId",
                        column: x => x.skillsskillId,
                        principalTable: "Skills",
                        principalColumn: "skillId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_SkillsStudents_Students_StudentsSkillsstudentsId",
                        column: x => x.StudentsSkillsstudentsId,
                        principalTable: "Students",
                        principalColumn: "studentsId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SkillsUserModel",
                columns: table => new
                {
                    skillsskillId = table.Column<int>(type: "int", nullable: false),
                    userId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SkillsUserModel", x => new { x.skillsskillId, x.userId });
                    table.ForeignKey(
                        name: "FK_SkillsUserModel_AspNetUsers_userId",
                        column: x => x.userId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_SkillsUserModel_Skills_skillsskillId",
                        column: x => x.skillsskillId,
                        principalTable: "Skills",
                        principalColumn: "skillId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "SkillsWorkingJob",
                columns: table => new
                {
                    jobSkillRequirementsskillId = table.Column<int>(type: "int", nullable: false),
                    workingJobjobSkillRequirementsjobId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SkillsWorkingJob", x => new { x.jobSkillRequirementsskillId, x.workingJobjobSkillRequirementsjobId });
                    table.ForeignKey(
                        name: "FK_SkillsWorkingJob_Skills_jobSkillRequirementsskillId",
                        column: x => x.jobSkillRequirementsskillId,
                        principalTable: "Skills",
                        principalColumn: "skillId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_SkillsWorkingJob_WorkingJobs_workingJobjobSkillRequirementsjobId",
                        column: x => x.workingJobjobSkillRequirementsjobId,
                        principalTable: "WorkingJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "UserModelWorkingJob",
                columns: table => new
                {
                    employeesId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    jobsjobId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserModelWorkingJob", x => new { x.employeesId, x.jobsjobId });
                    table.ForeignKey(
                        name: "FK_UserModelWorkingJob_AspNetUsers_employeesId",
                        column: x => x.employeesId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UserModelWorkingJob_WorkingJobs_jobsjobId",
                        column: x => x.jobsjobId,
                        principalTable: "WorkingJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobSkills_jobSkillRequirementsskillId",
                table: "DoneJobSkills",
                column: "jobSkillRequirementsskillId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobUserModel_employeesId",
                table: "DoneJobUserModel",
                column: "employeesId");

            migrationBuilder.CreateIndex(
                name: "IX_PostJobSkills_jobSkillRequirementsskillId",
                table: "PostJobSkills",
                column: "jobSkillRequirementsskillId");

            migrationBuilder.CreateIndex(
                name: "IX_PostJobUserModel_bookUsersId",
                table: "PostJobUserModel",
                column: "bookUsersId");

            migrationBuilder.CreateIndex(
                name: "IX_SkillsStudents_skillsskillId",
                table: "SkillsStudents",
                column: "skillsskillId");

            migrationBuilder.CreateIndex(
                name: "IX_SkillsUserModel_userId",
                table: "SkillsUserModel",
                column: "userId");

            migrationBuilder.CreateIndex(
                name: "IX_SkillsWorkingJob_workingJobjobSkillRequirementsjobId",
                table: "SkillsWorkingJob",
                column: "workingJobjobSkillRequirementsjobId");

            migrationBuilder.CreateIndex(
                name: "IX_UserModelWorkingJob_jobsjobId",
                table: "UserModelWorkingJob",
                column: "jobsjobId");

            migrationBuilder.AddForeignKey(
                name: "FK_DoneJobs_Organizions_postByinstitutionId",
                table: "DoneJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PostJobs_Organizions_postByinstitutionId",
                table: "PostJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Students_Collages_CollageinstitutionId",
                table: "Students",
                column: "CollageinstitutionId",
                principalTable: "Collages",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_WorkingJobs_Organizions_postByinstitutionId",
                table: "WorkingJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_DoneJobs_Organizions_postByinstitutionId",
                table: "DoneJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_PostJobs_Organizions_postByinstitutionId",
                table: "PostJobs");

            migrationBuilder.DropForeignKey(
                name: "FK_Students_Collages_CollageinstitutionId",
                table: "Students");

            migrationBuilder.DropForeignKey(
                name: "FK_WorkingJobs_Organizions_postByinstitutionId",
                table: "WorkingJobs");

            migrationBuilder.DropTable(
                name: "DoneJobSkills");

            migrationBuilder.DropTable(
                name: "DoneJobUserModel");

            migrationBuilder.DropTable(
                name: "PostJobSkills");

            migrationBuilder.DropTable(
                name: "PostJobUserModel");

            migrationBuilder.DropTable(
                name: "SkillsStudents");

            migrationBuilder.DropTable(
                name: "SkillsUserModel");

            migrationBuilder.DropTable(
                name: "SkillsWorkingJob");

            migrationBuilder.DropTable(
                name: "UserModelWorkingJob");

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "WorkingJobs",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "contractDetail",
                table: "WorkingJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "WorkingJobId",
                table: "WorkingJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "fullName",
                table: "Students",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<int>(
                name: "CollageinstitutionId",
                table: "Students",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<string>(
                name: "skillName",
                table: "Skills",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<int>(
                name: "DoneJobjobId",
                table: "Skills",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PostJobjobId",
                table: "Skills",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserModelId",
                table: "Skills",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "WorkingJobjobId",
                table: "Skills",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "studentsId",
                table: "Skills",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "PostJobs",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "PostJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "bookJobId",
                table: "PostJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "phone",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "name",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "Organizions",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "testimony",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<int>(
                name: "postByinstitutionId",
                table: "DoneJobs",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<string>(
                name: "location",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobsTypes",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobTitle",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobRequirements",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDuties",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "jobDescription",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "contractDetail",
                table: "DoneJobs",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<string>(
                name: "JobsDoneId",
                table: "DoneJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "likedJobId",
                table: "DoneJobs",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "courseName",
                table: "Courses",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "courseGrade",
                table: "Courses",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<int>(
                name: "studentsId",
                table: "Courses",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "phone",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "name",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "email",
                table: "Collages",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "fullName",
                table: "AspNetUsers",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.CreateIndex(
                name: "IX_WorkingJobs_WorkingJobId",
                table: "WorkingJobs",
                column: "WorkingJobId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_DoneJobjobId",
                table: "Skills",
                column: "DoneJobjobId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_PostJobjobId",
                table: "Skills",
                column: "PostJobjobId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_studentsId",
                table: "Skills",
                column: "studentsId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_UserModelId",
                table: "Skills",
                column: "UserModelId");

            migrationBuilder.CreateIndex(
                name: "IX_Skills_WorkingJobjobId",
                table: "Skills",
                column: "WorkingJobjobId");

            migrationBuilder.CreateIndex(
                name: "IX_PostJobs_bookJobId",
                table: "PostJobs",
                column: "bookJobId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobs_JobsDoneId",
                table: "DoneJobs",
                column: "JobsDoneId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobs_likedJobId",
                table: "DoneJobs",
                column: "likedJobId");

            migrationBuilder.CreateIndex(
                name: "IX_Courses_studentsId",
                table: "Courses",
                column: "studentsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Courses_Students_studentsId",
                table: "Courses",
                column: "studentsId",
                principalTable: "Students",
                principalColumn: "studentsId",
                onDelete: ReferentialAction.Restrict);

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
                name: "FK_DoneJobs_Organizions_postByinstitutionId",
                table: "DoneJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PostJobs_AspNetUsers_bookJobId",
                table: "PostJobs",
                column: "bookJobId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PostJobs_Organizions_postByinstitutionId",
                table: "PostJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_AspNetUsers_UserModelId",
                table: "Skills",
                column: "UserModelId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_DoneJobs_DoneJobjobId",
                table: "Skills",
                column: "DoneJobjobId",
                principalTable: "DoneJobs",
                principalColumn: "jobId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_PostJobs_PostJobjobId",
                table: "Skills",
                column: "PostJobjobId",
                principalTable: "PostJobs",
                principalColumn: "jobId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_Students_studentsId",
                table: "Skills",
                column: "studentsId",
                principalTable: "Students",
                principalColumn: "studentsId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Skills_WorkingJobs_WorkingJobjobId",
                table: "Skills",
                column: "WorkingJobjobId",
                principalTable: "WorkingJobs",
                principalColumn: "jobId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Students_Collages_CollageinstitutionId",
                table: "Students",
                column: "CollageinstitutionId",
                principalTable: "Collages",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WorkingJobs_AspNetUsers_WorkingJobId",
                table: "WorkingJobs",
                column: "WorkingJobId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_WorkingJobs_Organizions_postByinstitutionId",
                table: "WorkingJobs",
                column: "postByinstitutionId",
                principalTable: "Organizions",
                principalColumn: "institutionId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
