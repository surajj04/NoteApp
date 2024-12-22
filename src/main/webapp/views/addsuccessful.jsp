<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Note Added</title>
    <script
        src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen flex flex-col items-center justify-center">

    <div class="bg-white shadow-md rounded-lg p-6 w-11/12 sm:w-2/3 lg:w-1/3 text-center">
        <h1 class="text-2xl font-bold text-green-600">Success!</h1>
        <p class="text-gray-700 mt-4">Your note has been added successfully.</p>

        <div class="mt-6 space-x-4">
            <a href="/" class="bg-gray-600 text-white px-6 py-2 rounded-lg text-lg hover:bg-gray-500 transition">
                Add Another Note
            </a>
            <a href="/viewnote" class="bg-green-600 text-white px-6 py-2 rounded-lg text-lg hover:bg-green-500 transition">
                View All Notes
            </a>
        </div>
    </div>

</body>

</html>
