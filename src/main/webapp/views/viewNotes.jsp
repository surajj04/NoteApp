<%@ page import="com.bytetech.demoProject.model.Note"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Notes</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen">

    <%@ include file="components/navbar.jsp" %>
    <%
     List<Note> notes = (List<Note>) session.getAttribute("notes");
    %>

    <%
        if (notes != null && !notes.isEmpty()) {
    %>
    <header class="text-gray-800 my-6 py-6">
        <div class="container mx-auto text-center">
            <h1 class="text-3xl font-bold">Your Notes</h1>
            <p class="text-lg mt-2">Manage and organize your notes effortlessly.</p>
        </div>
    </header>

    <% } %>

    <main class="container mx-auto mt-8">
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            <%
                if (notes != null && !notes.isEmpty()) {
                    for (Note n : notes) {
            %>
            <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition-shadow">
                <h5 class="text-xl font-bold text-gray-800 mb-2"><%= n.getTitle() %></h5>
                <p class="text-gray-600 mb-4 line-clamp-3"><%= n.getMessage() %></p>
                <p class="text-gray-500 text-sm mb-2">
                    Created on: <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(n.getDate()) %>
                </p>
                <div class="flex justify-between items-center mt-4">
                    <a href="/viewnote/<%=n.getId()%>" class="text-blue-600 font-medium hover:underline">View</a>
                    <a href="/note/<%=n.getId()%>" class="text-yellow-500 font-medium hover:underline">Edit</a>
                    <a href="/notes/<%= n.getId() %>" class="text-red-500 font-medium hover:underline">Delete</a>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <p class="text-center text-gray-600 col-span-3 py-60">No notes available.</p>
            <%
                }
            %>
        </div>
    </main>

</body>
</html>
