<%@ page import="com.bytetech.demoProject.model.Note"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Note</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen">

    <%@ include file="components/navbar.jsp" %>

    <main class="container mx-auto mt-8">
        <%
            Note note = (Note) session.getAttribute("note");
        %>

        <div class="bg-white p-8 rounded-lg shadow-md max-w-2xl mx-auto">
            <h1 class="text-3xl font-bold text-gray-800 mb-4"><%= note.getTitle() %></h1>

            <p class="text-lg text-gray-700 mb-4"><%= note.getMessage() %></p>

            <p class="text-sm text-gray-500 mb-6">Created on: <%= note.getDate() %></p>

            <div class="flex justify-between">
                <a href="/note/<%=note.getId()%>"
                    class="bg-yellow-600 text-white px-4 py-2 rounded-md hover:bg-yellow-700 transition">
                    Edit Note
                </a>

                <a href="/notes/<%= note.getId() %>"
                    class="bg-red-600 text-white px-4 py-2 rounded-md hover:bg-red-700 transition">
                    Delete Note
                </a>
            </div>
        </div>
    </main>
</body>

</html>
