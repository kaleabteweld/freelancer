﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using freelancer.Models;

namespace freelancer.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20220923072215_addUserModel4")]
    partial class addUserModel4
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.17")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("ClaimType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("RoleId")
                        .HasColumnType("nvarchar(450)");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("Value")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("freelancer.Models.Collage", b =>
                {
                    b.Property<int>("institutionId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("institutionId");

                    b.ToTable("Collages");
                });

            modelBuilder.Entity("freelancer.Models.Course", b =>
                {
                    b.Property<int>("courseId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("courseGrade")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("courseName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("studentsId")
                        .HasColumnType("int");

                    b.HasKey("courseId");

                    b.HasIndex("studentsId");

                    b.ToTable("Courses");
                });

            modelBuilder.Entity("freelancer.Models.DoneJob", b =>
                {
                    b.Property<int>("jobId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("JobsDoneId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("contractDetail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("employersatisfactionRating")
                        .HasColumnType("real");

                    b.Property<int>("employmentType")
                        .HasColumnType("int");

                    b.Property<DateTime>("endtDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("jobDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobDuties")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobRequirements")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("jobSalary")
                        .HasColumnType("real");

                    b.Property<string>("jobTitle")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobsTypes")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("likedJobId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("location")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("minWorkingHours")
                        .HasColumnType("real");

                    b.Property<int?>("postByinstitutionId")
                        .HasColumnType("int");

                    b.Property<DateTime>("postDate")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("startDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("testimony")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("userJobSatisfactionRating")
                        .HasColumnType("real");

                    b.HasKey("jobId");

                    b.HasIndex("JobsDoneId");

                    b.HasIndex("likedJobId");

                    b.HasIndex("postByinstitutionId");

                    b.ToTable("DoneJobs");
                });

            modelBuilder.Entity("freelancer.Models.Organizion", b =>
                {
                    b.Property<int>("institutionId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("UserModelId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("phone")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("institutionId");

                    b.HasIndex("UserModelId");

                    b.ToTable("Organizions");
                });

            modelBuilder.Entity("freelancer.Models.PostJob", b =>
                {
                    b.Property<int>("jobId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("bookJobId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("employmentType")
                        .HasColumnType("int");

                    b.Property<string>("jobDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobDuties")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobRequirements")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("jobSalary")
                        .HasColumnType("real");

                    b.Property<string>("jobTitle")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobsTypes")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("location")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("minWorkingHours")
                        .HasColumnType("real");

                    b.Property<int?>("postByinstitutionId")
                        .HasColumnType("int");

                    b.Property<DateTime>("postDate")
                        .HasColumnType("datetime2");

                    b.HasKey("jobId");

                    b.HasIndex("bookJobId");

                    b.HasIndex("postByinstitutionId");

                    b.ToTable("PostJobs");
                });

            modelBuilder.Entity("freelancer.Models.Skills", b =>
                {
                    b.Property<int>("skillId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("DoneJobjobId")
                        .HasColumnType("int");

                    b.Property<int?>("PostJobjobId")
                        .HasColumnType("int");

                    b.Property<string>("UserModelId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int?>("WorkingJobjobId")
                        .HasColumnType("int");

                    b.Property<string>("skillName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("studentsId")
                        .HasColumnType("int");

                    b.HasKey("skillId");

                    b.HasIndex("DoneJobjobId");

                    b.HasIndex("PostJobjobId");

                    b.HasIndex("UserModelId");

                    b.HasIndex("WorkingJobjobId");

                    b.HasIndex("studentsId");

                    b.ToTable("Skills");
                });

            modelBuilder.Entity("freelancer.Models.Students", b =>
                {
                    b.Property<int>("studentsId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int?>("CollageinstitutionId")
                        .HasColumnType("int");

                    b.Property<float>("GPA")
                        .HasColumnType("real");

                    b.Property<DateTime?>("endYear")
                        .HasColumnType("datetime2");

                    b.Property<string>("fullName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("isGraduated")
                        .HasColumnType("bit");

                    b.Property<DateTime>("startingYear")
                        .HasColumnType("datetime2");

                    b.HasKey("studentsId");

                    b.HasIndex("CollageinstitutionId");

                    b.ToTable("Students");
                });

            modelBuilder.Entity("freelancer.Models.UserModel", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("int");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("bit");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("bit");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("datetimeoffset");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("bit");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("bit");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("nvarchar(256)");

                    b.Property<int>("XP")
                        .HasColumnType("int");

                    b.Property<int?>("collageinstitutionId")
                        .HasColumnType("int");

                    b.Property<string>("fullName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("studentsId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.HasIndex("collageinstitutionId");

                    b.HasIndex("studentsId");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("freelancer.Models.WorkingJob", b =>
                {
                    b.Property<int>("jobId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("WorkingJobId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<string>("contractDetail")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("employersatisfactionRating")
                        .HasColumnType("real");

                    b.Property<int>("employmentType")
                        .HasColumnType("int");

                    b.Property<string>("jobDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobDuties")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobRequirements")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("jobSalary")
                        .HasColumnType("real");

                    b.Property<string>("jobTitle")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("jobsTypes")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("location")
                        .HasColumnType("nvarchar(max)");

                    b.Property<float>("minWorkingHours")
                        .HasColumnType("real");

                    b.Property<int?>("postByinstitutionId")
                        .HasColumnType("int");

                    b.Property<DateTime>("postDate")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("startDate")
                        .HasColumnType("datetime2");

                    b.Property<float>("userJobSatisfactionRating")
                        .HasColumnType("real");

                    b.HasKey("jobId");

                    b.HasIndex("WorkingJobId");

                    b.HasIndex("postByinstitutionId");

                    b.ToTable("WorkingJobs");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole", null)
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("freelancer.Models.Course", b =>
                {
                    b.HasOne("freelancer.Models.Students", null)
                        .WithMany("courses")
                        .HasForeignKey("studentsId");
                });

            modelBuilder.Entity("freelancer.Models.DoneJob", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("JobsDone")
                        .HasForeignKey("JobsDoneId");

                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("likedJobs")
                        .HasForeignKey("likedJobId");

                    b.HasOne("freelancer.Models.Organizion", "postBy")
                        .WithMany("DoneJobs")
                        .HasForeignKey("postByinstitutionId");

                    b.Navigation("postBy");
                });

            modelBuilder.Entity("freelancer.Models.Organizion", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("organizions")
                        .HasForeignKey("UserModelId");
                });

            modelBuilder.Entity("freelancer.Models.PostJob", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("bookJobs")
                        .HasForeignKey("bookJobId");

                    b.HasOne("freelancer.Models.Organizion", "postBy")
                        .WithMany("postedJobs")
                        .HasForeignKey("postByinstitutionId");

                    b.Navigation("postBy");
                });

            modelBuilder.Entity("freelancer.Models.Skills", b =>
                {
                    b.HasOne("freelancer.Models.DoneJob", null)
                        .WithMany("jobSkillRequirements")
                        .HasForeignKey("DoneJobjobId");

                    b.HasOne("freelancer.Models.PostJob", null)
                        .WithMany("jobSkillRequirements")
                        .HasForeignKey("PostJobjobId");

                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("skills")
                        .HasForeignKey("UserModelId");

                    b.HasOne("freelancer.Models.WorkingJob", null)
                        .WithMany("jobSkillRequirements")
                        .HasForeignKey("WorkingJobjobId");

                    b.HasOne("freelancer.Models.Students", null)
                        .WithMany("skills")
                        .HasForeignKey("studentsId");
                });

            modelBuilder.Entity("freelancer.Models.Students", b =>
                {
                    b.HasOne("freelancer.Models.Collage", null)
                        .WithMany("students")
                        .HasForeignKey("CollageinstitutionId");
                });

            modelBuilder.Entity("freelancer.Models.UserModel", b =>
                {
                    b.HasOne("freelancer.Models.Collage", "collage")
                        .WithMany()
                        .HasForeignKey("collageinstitutionId");

                    b.HasOne("freelancer.Models.Students", "student")
                        .WithMany()
                        .HasForeignKey("studentsId");

                    b.Navigation("collage");

                    b.Navigation("student");
                });

            modelBuilder.Entity("freelancer.Models.WorkingJob", b =>
                {
                    b.HasOne("freelancer.Models.UserModel", null)
                        .WithMany("jobs")
                        .HasForeignKey("WorkingJobId");

                    b.HasOne("freelancer.Models.Organizion", "postBy")
                        .WithMany("activeJobs")
                        .HasForeignKey("postByinstitutionId");

                    b.Navigation("postBy");
                });

            modelBuilder.Entity("freelancer.Models.Collage", b =>
                {
                    b.Navigation("students");
                });

            modelBuilder.Entity("freelancer.Models.DoneJob", b =>
                {
                    b.Navigation("jobSkillRequirements");
                });

            modelBuilder.Entity("freelancer.Models.Organizion", b =>
                {
                    b.Navigation("activeJobs");

                    b.Navigation("DoneJobs");

                    b.Navigation("postedJobs");
                });

            modelBuilder.Entity("freelancer.Models.PostJob", b =>
                {
                    b.Navigation("jobSkillRequirements");
                });

            modelBuilder.Entity("freelancer.Models.Students", b =>
                {
                    b.Navigation("courses");

                    b.Navigation("skills");
                });

            modelBuilder.Entity("freelancer.Models.UserModel", b =>
                {
                    b.Navigation("bookJobs");

                    b.Navigation("jobs");

                    b.Navigation("JobsDone");

                    b.Navigation("likedJobs");

                    b.Navigation("organizions");

                    b.Navigation("skills");
                });

            modelBuilder.Entity("freelancer.Models.WorkingJob", b =>
                {
                    b.Navigation("jobSkillRequirements");
                });
#pragma warning restore 612, 618
        }
    }
}
