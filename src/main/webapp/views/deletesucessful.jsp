<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Successful</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <div class="bg-white shadow-lg rounded-lg p-8 text-center">
        <h1 class="text-2xl font-bold text-green-600 mb-4">Note Deleted Successfully!</h1>
        <p class="text-gray-700 mb-6">The selected note has been deleted from your records.</p>

        <div class="flex justify-center space-x-4">
            <!-- Button to go back to the notes list -->
            <a href="/notes"
                class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition">
                Back to Notes
            </a>

            <!-- Button to add a new note -->
            <a href="/"
                class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700 transition">
                Add New Note
            </a>
        </div>
    </div>

</body>

</html>
