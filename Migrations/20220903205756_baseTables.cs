using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace freelancer.Migrations
{
    public partial class baseTables : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Collages",
                columns: table => new
                {
                    institutionId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    phone = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Collages", x => x.institutionId);
                });

            migrationBuilder.CreateTable(
                name: "Organizions",
                columns: table => new
                {
                    institutionId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    phone = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Organizions", x => x.institutionId);
                });

            migrationBuilder.CreateTable(
                name: "Students",
                columns: table => new
                {
                    studentsId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    fullName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    startingYear = table.Column<DateTime>(type: "datetime2", nullable: false),
                    endYear = table.Column<DateTime>(type: "datetime2", nullable: true),
                    GPA = table.Column<float>(type: "real", nullable: false),
                    isGraduated = table.Column<bool>(type: "bit", nullable: false),
                    CollageinstitutionId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Students", x => x.studentsId);
                    table.ForeignKey(
                        name: "FK_Students_Collages_CollageinstitutionId",
                        column: x => x.CollageinstitutionId,
                        principalTable: "Collages",
                        principalColumn: "institutionId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "DoneJobs",
                columns: table => new
                {
                    jobId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    jobTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    postByinstitutionId = table.Column<int>(type: "int", nullable: true),
                    employmentType = table.Column<int>(type: "int", nullable: false),
                    jobRequirements = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDuties = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    minWorkingHours = table.Column<float>(type: "real", nullable: false),
                    jobSalary = table.Column<float>(type: "real", nullable: false),
                    postDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    startDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    contractDetail = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    userJobSatisfactionRating = table.Column<float>(type: "real", nullable: false),
                    employersatisfactionRating = table.Column<float>(type: "real", nullable: false),
                    jobsTypes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    endtDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    testimony = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DoneJobs", x => x.jobId);
                    table.ForeignKey(
                        name: "FK_DoneJobs_Organizions_postByinstitutionId",
                        column: x => x.postByinstitutionId,
                        principalTable: "Organizions",
                        principalColumn: "institutionId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "PostJobs",
                columns: table => new
                {
                    jobId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    jobTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    postByinstitutionId = table.Column<int>(type: "int", nullable: true),
                    employmentType = table.Column<int>(type: "int", nullable: false),
                    jobRequirements = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDuties = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    minWorkingHours = table.Column<float>(type: "real", nullable: false),
                    jobSalary = table.Column<float>(type: "real", nullable: false),
                    postDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    jobsTypes = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PostJobs", x => x.jobId);
                    table.ForeignKey(
                        name: "FK_PostJobs_Organizions_postByinstitutionId",
                        column: x => x.postByinstitutionId,
                        principalTable: "Organizions",
                        principalColumn: "institutionId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "WorkingJobs",
                columns: table => new
                {
                    jobId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    jobTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    location = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    postByinstitutionId = table.Column<int>(type: "int", nullable: true),
                    employmentType = table.Column<int>(type: "int", nullable: false),
                    jobRequirements = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    jobDuties = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    minWorkingHours = table.Column<float>(type: "real", nullable: false),
                    jobSalary = table.Column<float>(type: "real", nullable: false),
                    postDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    jobsTypes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    startDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    contractDetail = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    userJobSatisfactionRating = table.Column<float>(type: "real", nullable: false),
                    employersatisfactionRating = table.Column<float>(type: "real", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_WorkingJobs", x => x.jobId);
                    table.ForeignKey(
                        name: "FK_WorkingJobs_Organizions_postByinstitutionId",
                        column: x => x.postByinstitutionId,
                        principalTable: "Organizions",
                        principalColumn: "institutionId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Courses",
                columns: table => new
                {
                    courseId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    courseName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    courseGrade = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    studentsId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Courses", x => x.courseId);
                    table.ForeignKey(
                        name: "FK_Courses_Students_studentsId",
                        column: x => x.studentsId,
                        principalTable: "Students",
                        principalColumn: "studentsId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Skills",
                columns: table => new
                {
                    skillId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    skillName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DoneJobjobId = table.Column<int>(type: "int", nullable: true),
                    PostJobjobId = table.Column<int>(type: "int", nullable: true),
                    WorkingJobjobId = table.Column<int>(type: "int", nullable: true),
                    studentsId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Skills", x => x.skillId);
                    table.ForeignKey(
                        name: "FK_Skills_DoneJobs_DoneJobjobId",
                        column: x => x.DoneJobjobId,
                        principalTable: "DoneJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Skills_PostJobs_PostJobjobId",
                        column: x => x.PostJobjobId,
                        principalTable: "PostJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Skills_Students_studentsId",
                        column: x => x.studentsId,
                        principalTable: "Students",
                        principalColumn: "studentsId",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Skills_WorkingJobs_WorkingJobjobId",
                        column: x => x.WorkingJobjobId,
                        principalTable: "WorkingJobs",
                        principalColumn: "jobId",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Courses_studentsId",
                table: "Courses",
                column: "studentsId");

            migrationBuilder.CreateIndex(
                name: "IX_DoneJobs_postByinstitutionId",
                table: "DoneJobs",
                column: "postByinstitutionId");

            migrationBuilder.CreateIndex(
                name: "IX_PostJobs_postByinstitutionId",
                table: "PostJobs",
                column: "postByinstitutionId");

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
                name: "IX_Skills_WorkingJobjobId",
                table: "Skills",
                column: "WorkingJobjobId");

            migrationBuilder.CreateIndex(
                name: "IX_Students_CollageinstitutionId",
                table: "Students",
                column: "CollageinstitutionId");

            migrationBuilder.CreateIndex(
                name: "IX_WorkingJobs_postByinstitutionId",
                table: "WorkingJobs",
                column: "postByinstitutionId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Courses");

            migrationBuilder.DropTable(
                name: "Skills");

            migrationBuilder.DropTable(
                name: "DoneJobs");

            migrationBuilder.DropTable(
                name: "PostJobs");

            migrationBuilder.DropTable(
                name: "Students");

            migrationBuilder.DropTable(
                name: "WorkingJobs");

            migrationBuilder.DropTable(
                name: "Collages");

            migrationBuilder.DropTable(
                name: "Organizions");
        }
    }
}
