<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Note Deleted</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>

<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <div class="bg-white shadow-lg rounded-lg p-6 max-w-md w-full">
        <div class="flex items-center justify-center text-red-600">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-16 w-16" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 13l2-2m0 0l2-2m-2 2l2 2m-2-2v6m0-10v2m0 4H6.5A2.5 2.5 0 004 15.5V16h16v-.5A2.5 2.5 0 0017.5 13H12z" />
            </svg>
        </div>
        <h2 class="text-center text-2xl font-semibold text-gray-800 mt-4">Note Deleted</h2>
        <p class="text-center text-gray-600 mt-2">
            The note has been successfully deleted from the system.
        </p>
        <div class="mt-6 flex justify-center space-x-4">
            <a href="/viewnote" class="bg-blue-600 text-white px-4 py-2 rounded-lg shadow hover:bg-blue-700 transition">
                View Notes
            </a>
            <a href="/" class="bg-gray-600 text-white px-4 py-2 rounded-lg shadow hover:bg-gray-700 transition">
                Back to Home
            </a>
        </div>
    </div>

</body>

</html>
