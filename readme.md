# Benv (Just a work in progress)

So you want to make your apps compatible with [12 Factors App Manifest](http://www.12factor.net), including the thirdy (III) recomendation [III. Config](http://www.12factor.net/config) ?

### The problem

> "The twelve-factor app stores config in environment variables"

But what if your app has a lot configuration variables ? What if your server restart and your variables were cleared ?

### Benv - A productive way to persist your "env vars"

Many people like to store their variables into files executed by shell on login, in order to always have all variables declared when the server is restarted. Yeah we are talking about ```.bash_profile```, ```.bash_login```, ```.profile```, ```.bash_rc```.

When you change a environment variable your app will be able to read it instantaneously. But if your server goes down and you forgot to change the value in your "bash file" too, when the server reboot your app will be reading the old value of variable.

Export and synchronize your env vars with your "bash file" is not a very productive task. To help you keep it simple we have released this project Benv.


## What does it do ?
Benv is a command-line tool that with just one command synchronize your env var with your bash file.

Here is how you can use it:

```bash
# Setting or updating a environment variable
benv set AWS_SECRET_KEY UFmoO5pJrKmL1P9jURuuynU7Mm883tpv
```
This simple command will automatically update the "AWS_SECRET_KEY" value in your bash dot file.

```bash
# Applying changes, reload variables in your environment
source ~/.bashrc
```

```bash
# Deleting one variable
benv del AWS_SECRET_KEY
```

If want to check if it really works:

```bash
cat ~/bashrc | grep AWS_SECRET_KEY
```

