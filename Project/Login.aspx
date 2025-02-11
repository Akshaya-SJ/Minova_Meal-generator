﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <!--Favicon-->
    <link rel="icon" type="image/x-icon" href="images/logo.png" />

    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        .error-message {
            color: red;
            font-size: 0.875rem;
        }
    </style>
</head>
<body class="bg-gray-100">
    <form id="form1" runat="server" class="min-h-screen flex flex-col">
        
        <!-- Top Navigation start -->
        <nav class="bg-green-600 p-4">
            <div class="container mx-auto flex justify-between items-center">
                <div class=" flex items-center text-2xl font-bold">
                    <img src="images/logo.png" alt="logo" width="60px" height="60px" />
                    <a href="#" class="text-white">Minova</a> 
                </div>
            </div>
        </nav>
        <!-- Top Navigation end -->
        
        <!-- Login Form start -->
        <div class="flex-grow flex items-center justify-center">
            <div class="bg-white shadow-md rounded-lg p-8 max-w-md w-full mx-auto">
                <h2 class="text-2xl font-bold mb-6 text-green-700 text-center">Login</h2>
                
                <!-- Username -->
                <div class="mb-4">
                    <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                    <asp:TextBox ID="username" runat="server" CssClass="mt-1 p-2 w-full border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"></asp:TextBox>
                    <asp:Literal ID="usernameError" runat="server" Text="" EnableViewState="false" />
                </div>
                
                <!-- Password -->
                <div class="mb-6">
                    <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="mt-1 p-2 w-full border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500"></asp:TextBox>
                    <asp:Literal ID="passwordError" runat="server" Text="" EnableViewState="false" />
                </div>
                
                <!-- Submit Button -->
                <div class="text-center">
                    <asp:Button ID="submitButton" runat="server" Text="Login" CssClass="bg-green-600 text-white font-bold py-2 px-4 rounded-lg w-full hover:bg-green-500 focus:outline-none focus:ring-2 focus:ring-green-500" OnClick="LoginUser" />
                </div>
                <!-- New User Registration Link -->
                <div class="text-center mt-4">
                    <span class="text-gray-700">New User?</span>
                    <a href="Register.aspx" class="text-green-600 hover:text-green-500 font-semibold">Register here</a>
                </div>

            </div>
        </div>
        <!-- Login Form end -->
    </form>
</body>
</html>
