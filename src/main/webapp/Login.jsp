<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login</title>
</head>
<body>
<main class="bg-gray-50 dark:bg-gray-900">
  <div
          class="flex flex-col justify-center items-center py-8 px-6 mx-auto md:h-screen"
  >
    <a
            class="flex justify-center items-center mb-8 text-3xl font-semibold lg:mb-10 dark:text-white"
            href="/"
    ><span
            style="
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
            "
    ><span
            style="
                box-sizing: border-box;
                display: block;
                width: initial;
                height: initial;
                background: none;
                opacity: 1;
                border: 0px;
                margin: 0px;
                padding: 0px;
                max-width: 100%;"
    ></span
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
          Sign in to your account
        </h1>
        <p class="mb-3 text-gray-500 dark:text-gray-400">
          Join our community of designers and developers to get access to
          hundreds of UI components, plugins, resources, and design systems.
        </p>
        <form class="mt-8" action="login" method="post">
          <div class="mb-6">
            <label
                    for="email"
                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
            >Your email</label
            ><input
                  required=""
                  type="email"
                  name="email"
                  id="email"
                  placeholder="name@company.com"
                  class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  value=""
          />
          </div>
          <div class="mb-6">
            <label
                    for="password"
                    class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
            >Your password</label
            ><input
                  required=""
                  type="password"
                  name="password"
                  id="password"
                  placeholder=""
                  class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  value=""
          />
          </div>
          <div class="flex items-start mb-6">
            <div class="flex items-center h-5">
              <input
                      id="remember"
                      aria-describedby="remember"
                      name="remember"
                      type="checkbox"
                      class="w-4 h-4 bg-gray-50 rounded border-gray-300 focus:ring-3 focus:ring-blue-300 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:bg-gray-700 dark:border-gray-600"
              />
            </div>
            <div class="ml-3 text-sm">
              <label
                      for="remember"
                      class="font-medium text-gray-900 dark:text-white"
              >Remember me</label
              >
            </div>
            <a class="ml-auto text-sm text-blue-700 dark:text-blue-500 hover:underline" href="/forgot-password/">Forgot Password?</a>
          </div>
          <button
                  class="text-white font-medium rounded-lg text-base px-5 py-3 w-full sm:w-auto text-center mb-6 bg-orange-700"
                  type="submit">
                <span class="flex justify-center items-center">Sign in to account</span>
          </button>
          <div class="text-sm font-medium text-gray-500 dark:text-gray-400">
            Not registered?<a
                  class="ml-1 text-blue-700 hover:underline dark:text-blue-500"
                  href="/register.jsp"
          >Create an account.</a>
          </div>
        </form>

      </div>
    </div>
  </div>
</main>
</body>
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
</html>

