<%@ page import="com.bytetech.demoProject.model.Note"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notes App - Home</title>
    <script
        src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100">

        <%@ include file="components/navbar.jsp" %>

    <div class="container mx-auto px-4 py-8">

        <div class="bg-white p-6 rounded-lg shadow-md mb-8">
            <h2 class="text-2xl font-semibold text-gray-800 mb-4">Add a New Note</h2>
            <form action="/note" method="POST">
                <div class="mb-4">
                    <label for="title" class="block text-gray-700 text-lg">Title</label>
                    <input type="text" id="title" name="title"
                        class="w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                        required>
                </div>
                <div class="mb-4">
                    <label for="message" class="block text-gray-700 text-lg">Message</label>
                    <textarea id="message" name="message" rows="4"
                        class="w-full px-4 py-2 mt-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
                        required></textarea>
                </div>
                <button type="submit"
                    class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition">Add
                    Note
                </button>
            </form>
        </div>

        <h2 class="text-2xl font-semibold text-gray-800 mb-4">Recent Notes</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <%
                List<Note> notes = (List<Note>) session.getAttribute("recent");
                if (notes != null && !notes.isEmpty()) {
                    for (Note n : notes) {
            %>
            <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition-shadow">
                <h5 class="text-xl font-bold text-gray-800 mb-2"><%= n.getTitle() %></h5>
                <p class="text-gray-600 mb-4 line-clamp-3"><%= n.getMessage() %></p>
                <p class="text-gray-600 mb-4 text-sm">Date:
                    <%= new java.text.SimpleDateFormat("dd-MM-yyyy").format(n.getDate()) %>
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
    </div>


</body>

</html>