# Listing State Backend
### Rails back end for the React PWA app

## Usage & Installation

Literally don't do anything with this, I'll change this into a private repository when the deed is done

Felt cute, will probably migrate everything into firebase

## Dev Environment

`IMPORTANT: Start Rails server first`

If you **still** wanna test this app on a local environment:

Install the necessary gems:

```
$ bundle install
```

Migrate the database

```
$ rails db:migrate
```

Here's where it gets tricky; this version of Rails stopped supporting network visibility, so you gotta run a special command:

```
$ rails s --binding=0.0.0.0
```

The app should be visible in our network in the port `3000`

#### Created by:

Carlos Sol: [@FSolM](https://github.com/FSolM)
