using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PSotnikovMasterWorkArea.Data.Migrations
{
    public partial class Cases : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
            name: "Cases",
            columns: table => new
            {
             ID = table.Column<int>(nullable: false),
             CaseName = table.Column<string>(maxLength: 256, nullable: true),
             CaseDescription = table.Column<string>(maxLength: 256, nullable: true),
             CreationDT = table.Column<DateTime>(nullable: true)
            },
            constraints: table =>
            {
             table.PrimaryKey("PK_Cases", x => x.ID);
            });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {

        }
    }
}
