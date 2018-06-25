﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using pharmaGo.Config;

namespace pharmaGo.Migrations
{
    [DbContext(typeof(DBContext))]
    [Migration("20180625191229_Initial2")]
    partial class Initial2
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.1-rtm-30846");

            modelBuilder.Entity("pharmaGo.Models.Basket", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("TotalItems");

                    b.Property<double>("TotalValue");

                    b.HasKey("ID");

                    b.ToTable("Baskets");
                });

            modelBuilder.Entity("pharmaGo.Models.Order", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<bool>("IsPayed");

                    b.Property<int>("TotalItems");

                    b.Property<double>("TotalValue");

                    b.HasKey("ID");

                    b.ToTable("Orders");
                });

            modelBuilder.Entity("pharmaGo.Models.OrderItem", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int?>("BasketID");

                    b.Property<int>("IdProduct");

                    b.Property<int?>("OrderID");

                    b.HasKey("ID");

                    b.HasIndex("BasketID");

                    b.HasIndex("OrderID");

                    b.ToTable("OrderItems");
                });

            modelBuilder.Entity("pharmaGo.Models.Product", b =>
                {
                    b.Property<int>("ID")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AvailableAmount");

                    b.Property<string>("Description");

                    b.Property<string>("Image");

                    b.Property<string>("Name");

                    b.Property<double>("Price");

                    b.HasKey("ID");

                    b.ToTable("Products");
                });

            modelBuilder.Entity("pharmaGo.Models.OrderItem", b =>
                {
                    b.HasOne("pharmaGo.Models.Basket")
                        .WithMany("Items")
                        .HasForeignKey("BasketID");

                    b.HasOne("pharmaGo.Models.Order")
                        .WithMany("Items")
                        .HasForeignKey("OrderID");
                });
#pragma warning restore 612, 618
        }
    }
}
