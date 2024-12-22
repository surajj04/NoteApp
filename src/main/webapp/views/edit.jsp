<%@ page import="com.bytetech.demoProject.model.Note"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Note</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <%
        Note note = (Note) session.getAttribute("editNote");
    %>

    <div class="bg-white shadow-lg rounded-lg p-8 max-w-lg w-full">
        <h1 class="text-2xl font-semibold text-gray-800 mb-6 text-center">Edit Note</h1>
        <form action="/note" class="space-y-6">
            <!-- Hidden field to simulate PUT method -->
            <input type="hidden" name="id" value="<%= note.getId() %>">
            <div>
                <label for="title" class="block text-sm font-medium text-gray-700">Title</label>
                <input
                    type="text"
                    name="title"
                    id="title"
                    value="<%= note.getTitle() %>"
                    required
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                >
            </div>

            <div>
                <label for="message" class="block text-sm font-medium text-gray-700">Message</label>
                <textarea
                    name="message"
                    id="message"
                    rows="5"
                    required
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
                ><%= note.getMessage() %></textarea>
            </div>

            <div class="flex justify-between">
                <a
                    href="/"
                    class="bg-gray-600 text-white px-4 py-2 rounded-lg shadow hover:bg-gray-700 transition"
                >
                    Cancel
                </a>
                <button
                    type="submit"
                    class="bg-blue-600 text-white px-6 py-2 rounded-lg shadow hover:bg-blue-700 transition"
                >
                    Save Changes
                </button>
            </div>
        </form>
    </div>

</body>

</html>
