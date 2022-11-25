<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register</title>
</head>
<body>
<main class="bg-gray-50 dark:bg-gray-900">
    <div class="flex flex-col justify-center items-center py-8 px-6 mx-auto">
        <a class="flex justify-center items-center mb-8 text-3xl font-semibold lg:mb-10 dark:text-white" href="/"><span style="
              box-sizing: border-box;
              display: inline-block;
              overflow: hidden;
              width: initial;
              height: initial;
              background: none;
              opacity: 1;
              border: 0px;
              margin: 0px;
              padding: 0px;
              position: relative;
              max-width: 100%;
            "><span style="
                box-sizing: border-box;
                display: block;
                width: initial;
                height: initial;
                background: none;
                opacity: 1;
                border: 0px;
                margin: 0px;
                padding: 0px;
                max-width: 100%;"></span
                alt="Flowbite logo"
                srcset="/images/logo.svg 1x, /images/logo.svg 2x"
                src="/images/logo.svg"
                decoding="async"
                data-nimg="intrinsic"
                style="
                position: absolute;
                inset: 0px;
                box-sizing: border-box;
                padding: 0px;
                border: none;
                margin: auto;
                display: block;
                width: 0px;
                height: 0px;
                min-width: 100%;
                max-width: 100%;
                min-height: 100%;
                max-height: 100%;
                object-fit: contain;"/></span
        ><span class="ml-3">WELCOME TO KLOCK</span></a
        >
        <div
                class="justify-center items-center w-full bg-white rounded-lg shadow lg:flex md:mt-0 lg:max-w-screen-sm xl:p-0 dark:bg-gray-800"
        >
            <div class="p-6 w-full sm:p-8 lg:p-10">
                <h1
                        class="mb-3 text-2xl font-bold text-gray-900 lg:text-3xl dark:text-white"
                >
                    Register to new account
                </h1>
                <p class="mb-3 text-gray-500 dark:text-gray-400">

                </p>
                <form class="mt-8" action="home?action=register" method="post">
                    <div class="mb-6">
                        <label
                                for="email"
                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your first name</label
                        ><input
                            required=""
                            type="text"
                            name="firstName"
                            id="firstName"
                            placeholder="name@company.com"
                            class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            value="${user.getFirstName()}"
                    />
                    </div>
                        <div class="mb-6">
                            <label
                                    for="email"
                                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                            >Your last name</label
                            ><input
                                required=""
                                type="text"
                                name="lastName"
                                id="lastName"
                                placeholder="name@company.com"
                                class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                value="${user.getLastName()}"
                        />
                        </div>
                            <div class="mb-6">
                                <label
                                        for="email"
                                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                                >Your user name</label
                                ><input
                                    required=""
                                    type="email"
                                    name="email"
                                    id="email"
                                    placeholder="name@company.com"
                                    class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                    value="${user.getEmail()}"
                            />
                            </div>
                    <div class="mb-6">
                        <label
                                for="email"
                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your email</label
                        ><input
                            required=""
                            type="text"
                            name="userName"
                            id="userName"
                            placeholder="user name"
                            class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            value="${user.getUserName()}"
                    />
                    </div>
                    <div class="mb-6">
                        <label
                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your password</label
                        ><input
                            required=""
                            type="password"
                            name="password"
                            placeholder=""
                            class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            value=""
                    />
                    </div>
                    <div class="mb-6">
                        <label
                                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your password</label
                        ><input
                            required=""
                            type="password"
                            name="confirmPassword"
                            placeholder=""
                            class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                            value=""
                    />
                    </div>
                    <span id = "error" style="color: red">${error}</span>
                    <div class="flex items-start mb-6">
                    </div>
                    <button
                            class="text-white font-medium rounded-lg text-base px-5 py-3 w-full sm:w-auto text-center mb-6 bg-orange-700"
                            type="submit">
                <span class="flex justify-center items-center"
                >Register new account</span>
                    </button>
                </form>
            </div>
        </div>
    </div>
</main>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.tailwindcss.com"></script>
<script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    clifford: "#da373d",
                },
            },
        },
    };
</script>

</body>

</html>
