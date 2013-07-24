# Benv (Just a work in progress)

So you want to make your apps compatible with [12 Factors App Manifest](http://www.12factor.net), including the thirdy (III) recomendation [III. Config](http://www.12factor.net/config) ?

### The problem

> "The twelve-factor app stores config in environment variables"

But what if your app has a lot configuration variables ? What if your server restart and your variables were cleaned ?

### A productive way persist your env vars

Many people like to store their variables into files executed by shell on login, in order to always have all variables declared when the is retarted. Yeah we are talking about ```.bash_profile```, ```.bash_login```, and ```.profile```.

When you change a environment variable your app will be able to read it instantaneously, but if your server goes down if you forgot to change the value in your "bash file" too, when the server reboot your app will be reading the old value of variable.

Export and synchronize your env vars with your "bash file" is not a too much productive task, and to help you keep it simple we have released this project Benv.


## What does it do ?
Benv is a command-line tool that with just one command synchronize your env var with your bash file.

Here is how you can use it:

```bash
# Setting or updating a environment variable
export AWS_SECRET_KEY=UFmoO5pJrKmL1P9jURuuynU7Mm883tpv
```

```bash
# Update the current value in your bash file
benv update AWS_SECRET_KEY
```
This simples command will automatically update the "AWS_SECRET_KEY" value in your bash dot file.

If want to check if it really works:

```bash
cat ./bash_login | grep AWS_SECRET_KEY
```

